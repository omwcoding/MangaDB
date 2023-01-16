-- Active: 1672329880844@@127.0.0.1@3306@mangadb
DROP DATABASE IF EXISTS MangaDB;
CREATE DATABASE IF NOT EXISTS MangaDB;

USE MangaDB;

-- Creazione tabella Serie
CREATE TABLE SERIE(
    id_serie INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    anno_pubblicazione INT DEFAULT NULL,
    stato VARCHAR(30) DEFAULT NULL,
    n_volumi INT DEFAULT NULL,
    costo_totale DECIMAL(5,2) DEFAULT NULL,

    id_editore INT DEFAULT NULL,
    id_categoria INT DEFAULT NULL,
    id_genere INT DEFAULT NULL,
    id_autore INT DEFAULT NULL
);

-- Creazione tabella Volume
CREATE TABLE VOLUME(
    id_volume INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    possesso BIT DEFAULT 0,
    prezzo DECIMAL(5,2) DEFAULT NULL,

    id_serie INT DEFAULT NULL  
);

-- Creazione tabella Autore
CREATE TABLE AUTORE(
    id_autore INT AUTO_INCREMENT PRIMARY KEY,
    nome CHAR(255)
);

-- Creazione tabella Genere
CREATE TABLE GENERE(
    id_genere INT AUTO_INCREMENT PRIMARY KEY,
    nome CHAR(50)
);

-- Creazione tabella Categoria
CREATE TABLE CATEGORIA(
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome CHAR(255)
);

-- Creazione tabella Editore
CREATE TABLE EDITORE(
    id_editore INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255)
);

ALTER TABLE serie 
    ADD CONSTRAINT FK_SerieEditore FOREIGN KEY (id_editore) REFERENCES editore(id_editore) 
        ON UPDATE CASCADE;
ALTER TABLE serie 
    ADD CONSTRAINT FK_SerieCategoria FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria) 
        ON UPDATE CASCADE;
ALTER TABLE serie 
    ADD CONSTRAINT FK_SerieGenere FOREIGN KEY (id_genere) REFERENCES genere(id_genere) 
        ON UPDATE CASCADE;
ALTER TABLE serie 
    ADD CONSTRAINT FK_SerieAutore FOREIGN KEY (id_autore) REFERENCES autore(id_autore)
        ON UPDATE CASCADE;
ALTER TABLE volume 
    ADD CONSTRAINT FK_SerieVolume FOREIGN KEY (id_serie) REFERENCES serie(id_serie) 
        ON UPDATE CASCADE;