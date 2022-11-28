-- Active: 1669626310282@@127.0.0.1@3306@mangadb
-- 
DROP database IF EXISTS MangaDB;
CREATE DATABASE IF NOT EXISTS MangaDB;

USE MangaDB;

-- Creazione tabella Serie
CREATE TABLE SERIE(
    id INT auto_increment PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    anno_pubblicazione INT DEFAULT NULL,
    terminato BOOL DEFAULT FALSE,
    
    FK_autore INT DEFAULT NULL,
    FK_categoria INT DEFAULT NULL,
    FK_genere INT DEFAULT NULL
);

-- Creazione tabella Volume
CREATE TABLE VOLUME(
    id INT auto_increment PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    possesso BOOL DEFAULT FALSE
);

-- Creazione tabella Autore
CREATE TABLE AUTORE(
    id INT auto_increment PRIMARY KEY,
    nome char(50),
    nazionalità char(20)
);

-- Creazione tabella Genere
CREATE TABLE GENERE(
    id INT auto_increment PRIMARY KEY,
    nome char(50),
    sottogenere char(50)
);

-- Creazione tabella Categoria
CREATE TABLE CATEGORIA(
    id INT auto_increment PRIMARY KEY,
    nome char(50)
);
