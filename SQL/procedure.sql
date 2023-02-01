USE MangaDB;

-- Inserimento nuova serie
DELIMITER //
CREATE PROCEDURE insertSerie (IN nome VARCHAR(255), IN anno_pubblicazione INT, IN is_finished VARCHAR(30), IN n_volumi INT)
BEGIN
INSERT INTO serie (nome, anno_pubblicazione, is_finished, n_volumi)
VALUES (nome, anno_pubblicazione, is_finished, n_volumi);
END //
DELIMITER ;

-- Inserimento nuovo volume
DELIMITER //
CREATE PROCEDURE insertVolume (IN nome VARCHAR(255), IN possesso BIT, IN prezzo DECIMAL(5,2), IN id_serie INT, IN is_standard BIT, IN is_read BIT)
BEGIN
INSERT INTO volume (nome, possesso, prezzo, id_serie, is_standard, is_read)
VALUES (nome, possesso, prezzo, id_serie, is_standard, is_read);
END //
DELIMITER ;

--CALL insertSerie("Claymore", 2001, "Finished", 27);
--CALL insertVolume