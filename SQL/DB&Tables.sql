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

    id_editore INT NOT NULL,
    id_categoria INT NOT NULL,
    id_genere INT NOT NULL,

    FOREIGN KEY (id_editore) REFERENCES editore(id_editore),
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);

-- Creazione tabella Volume
CREATE TABLE VOLUME(
    id_volume INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    possesso BIT DEFAULT 0,
    id_serie INT NOT NULL,

    FOREIGN KEY (id_serie) REFERENCES serie(id_serie)
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
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255)

);

--Dubbio su queste tabelle
CREATE TABLE serie_autore (
  id_serie INT NOT NULL,
  id_autore INT NOT NULL,
  PRIMARY KEY (id_serie, id_autore),
  FOREIGN KEY (id_serie) REFERENCES serie(id_serie),
  FOREIGN KEY (id_autore) REFERENCES autore(id_autore)
);

CREATE TABLE serie_genere (
  id_serie INT NOT NULL,
  id_genere INT NOT NULL,
  PRIMARY KEY (id_serie, id_genere),
  FOREIGN KEY (id_serie) REFERENCES serie(id_serie),
  FOREIGN KEY (id_genere) REFERENCES genere(id_genere)
);