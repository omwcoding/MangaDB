-- Active: 1669626310282@@127.0.0.1@3306@mangadb
-- 
DROP database IF EXISTS MangaDB;
CREATE DATABASE IF NOT EXISTS MangaDB;

USE MangaDB;

-- Creazione tabella Serie
CREATE TABLE SERIE(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    anno_pubblicazione INT DEFAULT NULL,
    stato VARCHAR(30) NOT NULL DEFAULT 'IN PROGRESS',
);

-- Creazione tabella Volume
CREATE TABLE VOLUME(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    possesso BOOL DEFAULT FALSE
);

-- Creazione tabella Autore
CREATE TABLE AUTORE(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome CHAR(50),
    nazionalità CHAR(20)
);

-- Creazione tabella Genere
CREATE TABLE GENERE(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome CHAR(50),
    sottogenere CHAR(50)
);

-- Creazione tabella Categoria
CREATE TABLE CATEGORIA(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome CHAR(50)
);

--Creazione tabella Casa Editrice
CREATE TABLE CASA_EDITRICE(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    nazione VARCHAR(30)
);
