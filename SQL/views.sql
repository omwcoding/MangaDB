-- Active: 1672329880844@@127.0.0.1@3306@mangadb
CREATE VIEW VolumiInPossesso
AS
SELECT nome FROM mangadb.volume WHERE possesso = 1;

CREATE VIEW VolumiMancanti
AS
SELECT nome FROM mangadb.volume WHERE possesso = 0;

CREATE VIEW SerieInPossesso
AS
SELECT nome, anno_pubblicazione, stato, n_volumi FROM mangadb.serie ORDER BY `stato` desc;

CREATE VIEW Mangaka
AS
SELECT nome, nazionalità FROM mangadb.autore;



