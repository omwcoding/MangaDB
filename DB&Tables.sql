DROP database IF EXISTS MangaDB;
CREATE DATABASE IF NOT EXISTS MangaDB;

USE MangaDB;

-- Creazione tabella Serie
CREATE TABLE SERIE(
    id INT auto_increment PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    data_pubblicazione DATE,
    id_autore INT NULL,
    id_genere INT NULL,
    id_categoria INT NULL
);

-- Creazione tabella Volume
CREATE TABLE VOLUME(
    id INT PRIMARY KEY,
    prezzo DECIMAL(3,2) NULL,
    id_autore INT NULL
);

-- Creazione tabella Autore
CREATE TABLE AUTORE(
    id INT PRIMARY KEY,
    nome char(50),
    nazionalità char(20)
);

-- Creazione tabella Genere
CREATE TABLE GENERE(
    id INT PRIMARY KEY,
    nome char(20)

);

-- Creazione tabella Categoria
CREATE TABLE CATEGORIA(
    id INT PRIMARY KEY,
    nome char(50)
);
