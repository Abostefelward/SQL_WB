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
CREATE Table IF NOT EXISTS kunde
(
    k_id INT AUTO_INCREMENT PRIMARY KEY,
    k_name VARCHAR(45) NOT NULL DEFAULT 'TBA',                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
    k_alter TINYINT,
    k_mail VARCHAR(100) UNIQUE,
    k_password VARCHAR(255)
);

-- Tabellen anzeigen
Show TABLES;


-- Struktur anzeigen                                                                                                              
DESCRIBE kunde;


-- Datensätze/zeilen /password immer hashen!! SHA" ('pw',256)

INSERT INTO kunde (k_id,k_name,k_alter,k_mail,k_password) VALUES (DEFAULT,'Meier',28,'meier@web.de',SHA2('123pass',256));
INSERT INTO kunde (k_id,k_name,k_alter,k_mail,k_password) VALUES (DEFAULT,'Hussein',32,'hussein@web.de',SHA2('1234pass',256));
INSERT INTO kunde (k_id,k_name,k_alter,k_mail,k_password) VALUES (DEFAULT,'li',26,'li@web.de',SHA2('12345pass',256));
INSERT INTO kunde (k_id,k_name,k_alter,k_mail,k_password) VALUES (DEFAULT,'li',40,'lichan@gmail.com',SHA2('321pass',256));
INSERT INTO kunde (k_id,k_name,k_alter,k_mail,k_password) VALUES (DEFAULT,'li',61,'liyoun@gmail.com',SHA2('213pass',256));




-- Tabellendaten (Inhalte) anzeigen
SELECT * FROM kunde;