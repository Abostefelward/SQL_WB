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
    k_name VARCHAR(45),
    k_alter TINYINT
);

-- Tabellen anzeigen
Show TABLES;

-- Struktur anzeigen
DESCRIBE kunde;

-- Datensätze/zeilen
INSERT INTO kunde(k_name,k_alter) VALUES("Meier", 28);
INSERT INTO kunde(k_name,k_alter) VALUES("Hussein", 32);

-- Tabellendaten (Inhalte) anzeigen
SELECT * FROM kunde;