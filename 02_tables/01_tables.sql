\! cls 


-- DB anzeigen
SHOW DATABASES;

-- DB anlegen, falls noch nicht existent
CREATE DATABASE IF NOT EXISTS boo;

-- DB Wechesln
use boo;

-- Tabelle löchen, falls existent
-- nur bei test \ ENTWICKLUNG
Drop TABLE if EXISTS kunde;

-- Tabelle anlegen
CREATE Table IF NOT EXISTS kunde
(
    k_id INT AUTO_INCREMENT PRIMARY KEY,
    k_name VARCHAR(45),
    k_alter TINYINT
);

-- Tabellen anzeigen
Show TABLES;

-- Struktur anzeigen
DESCRIBE kunde;

-- Datensätze/zeilen
INSERT INTO kunde(k_id,k_name,k_alter) VALUES(DEFAULT,"Meier", 28);
INSERT INTO kunde(k_id,k_name,k_alter) VALUES(DEFAULT,"Hussein", 32);
INSERT INTO kunde(k_id,k_name,k_alter) VALUES(DEFAULT,"li", 26);
INSERT INTO kunde(k_id,k_name,k_alter) VALUES(DEFAULT,"li", 40);



-- Tabellendaten (Inhalte) anzeigen
SELECT * FROM kunde;