\! cls 

--UNIQUE


-- DB anlegen, falls noch nicht existent
CREATE DATABASE IF NOT EXISTS boo;

-- DB Wechesln
use boo;

-- Tabelle löchen, falls existent
-- nur bei test \ ENTWICKLUNG
Drop TABLE if EXISTS kunde;

-- Tabelle anlegen
CREATE TABLE IF NOT EXISTS kunde
(
    k_id INT AUTO_INCREMENT PRIMARY KEY,
    k_name VARCHAR(45) NOT NULL DEFAULT 'TBA',
    k_alter TINYINT,
    k_mail VARCHAR(100) UNIQUE,
    k_password VARCHAR(255) NOT NULL
);

SHOW TABLES;

DESCRIBE kunde;

INSERT INTO kunde (k_id, k_name, k_alter, k_mail, k_password) VALUES (DEFAULT, 'Meier', 28, 'meier@web.de', '123pass');
INSERT INTO kunde (k_id, k_name, k_alter, k_mail, k_password) VALUES (DEFAULT, 'Hussein', 32, 'hussein@web.de', '1234pass');
INSERT INTO kunde (k_id, k_name, k_alter, k_mail, k_password) VALUES (DEFAULT, 'li', 26, 'li@web.de', '12345pass');
INSERT INTO kunde (k_id, k_name, k_alter, k_mail, k_password) VALUES (DEFAULT, 'li', 40, 'lichan@gmail.com', '321pass');
INSERT INTO kunde (k_id, k_name, k_alter, k_mail, k_password) VALUES (DEFAULT, 'li', 61, 'liyoun@gmail.com', '213pass');

INSERT INTO kunde(k_id, k_name, k_alter, k_mail, k_password) VALUES(DEFAULT,NULL,NULL,NULL,'412pass');




-- Tabellendaten (Inhalte) anzeigen
SELECT * FROM kunde;