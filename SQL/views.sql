-- Active: 1672329880844@@127.0.0.1@3306@mangadb
CREATE VIEW VolumiInPossesso
AS
SELECT mangadb.serie.nome AS nomeSerie, mangadb.volume.nome AS nomeVolume, mangadb.volume.is_standard, mangadb.volume.prezzo
FROM mangadb.volume INNER JOIN mangadb.serie ON mangadb.volume.id_serie = mangadb.serie.id_serie
WHERE mangadb.volume.possesso = 1 ORDER BY 'id_serie' desc;

CREATE VIEW VolumiMancanti
AS
SELECT mangadb.serie.nome AS nomeSerie, mangadb.volume.nome AS nomeVolume, mangadb.volume.is_standard, mangadb.volume.prezzo
FROM mangadb.volume INNER JOIN mangadb.serie ON mangadb.volume.id_serie = mangadb.serie.id_serie
WHERE mangadb.volume.possesso = 0 ORDER BY 'id_serie' desc;

CREATE VIEW SeriePossesso
AS
SELECT nome, anno_pubblicazione, stato, n_volumi FROM mangadb.serie ORDER BY `stato` desc;

CREATE VIEW Mangaka
AS
SELECT nome FROM mangadb.autore;



