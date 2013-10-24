DROP DATABASE IF EXISTS CD_Musiker_Verwaltung;
CREATE DATABASE CD_Musiker_Verwaltung;
USE CD_Musiker_Verwaltung;

CREATE TABLE Band (
    Name VARCHAR(50) PRIMARY KEY,
    Gruendungsdatum DATE
);

CREATE TABLE Instrument (
    Name VARCHAR(30) PRIMARY KEY
);

CREATE TABLE Musiker (
    Musiker_Nr INTEGER AUTO_INCREMENT PRIMARY KEY,
    Vorname VARCHAR(30) NOT NULL,
    Nachname VARCHAR(30) NOT NULL,
    Gebdatum DATE,
    Instrumentname VARCHAR(30) NOT NULL,
    Bandname VARCHAR(50) NOT NULL,
    seit_wann YEAR,
    FOREIGN KEY (Instrumentname) REFERENCES Instrument (Name),
    FOREIGN KEY (Bandname) REFERENCES Band (Name),
    UNIQUE (Vorname, Nachname, Gebdatum)
);

CREATE TABLE Genre (
    Name VARCHAR (20) PRIMARY KEY
);

CREATE TABLE Album (
    Titel VARCHAR (50) PRIMARY KEY,
    Jahr YEAR,
    Genrename VARCHAR(20),
    Bandname VARCHAR(50) NOT NULL,
    FOREIGN KEY (Genrename) REFERENCES Genre (Name),
    FOREIGN KEY (Bandname) REFERENCES Band (Name)
);

CREATE TABLE mitwirken (
   Musiker_Nr INTEGER,
   Albumtitel VARCHAR(50),
   FOREIGN KEY (Musiker_Nr) REFERENCES Musiker (Musiker_Nr),
   FOREIGN KEY (Albumtitel) REFERENCES Album (Titel),
   PRIMARY KEY (Musiker_Nr, Albumtitel)    
);