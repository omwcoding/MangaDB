DROP database IF EXISTS MangaDB;
CREATE DATABASE IF NOT EXISTS MangaDB;

USE MangaDB;

CREATE TABLE SERIE(
    id INT auto_increment PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    id_autore INT NOT NULL,
    data_pubblicazione DATE
);
CREATE TABLE VOLUME(

    prezzo DECIMAL(3,2)

);
CREATE TABLE AUTORE(
    id INT PRIMARY KEY,
    nome char(50),
    nazionalità char(20)
);
CREATE TABLE GENERE(
    id INT PRIMARY KEY

);
CREATE TABLE CATEGORIA(
    id INT PRIMARY KEY

);
