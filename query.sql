-- Active: 1669626310282@@127.0.0.1@3306@mangadb
--Mostra i volumi attualmente in posssesso
SELECT * FROM mangadb.volume WHERE possesso = 1;

--Mostra i volumi mancanti delle serie iniziate
SELECT * FROM mangadb.volume WHERE possesso = 0;

--Mostra le serie attualmente in possesso (ordine per stato)
SELECT * FROM mangadb.serie ORDER BY `stato` desc;

--Mostra i mangaka nel MangaDB
SELECT * FROM mangadb.autore;
