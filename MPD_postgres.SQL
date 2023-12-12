BEGIN;

CREATE TABLE Code_individu (
   code SERIAL PRIMARY KEY,
   Nom VARCHAR(50),
   Prénom VARCHAR(50)
);

CREATE TABLE Professeur (
   code INT PRIMARY KEY,
   competence VARCHAR(50),
   FOREIGN KEY (code) REFERENCES Code_individu(code)
);

CREATE TABLE Adresse (
   numéro INT,
   rue VARCHAR(50),
   ville VARCHAR(50),
   code_postal INT,
   PRIMARY KEY (numéro, rue, ville, code_postal)
);

CREATE TABLE Matière (
   nom_matière VARCHAR(50) PRIMARY KEY
);

CREATE TABLE Salle (
   nom VARCHAR(50) PRIMARY KEY
);

CREATE TABLE Etudiant (
   code INT PRIMARY KEY,
   diplome VARCHAR(50),
   numéro INT NOT NULL,
   rue VARCHAR(50) NOT NULL,
   ville VARCHAR(50) NOT NULL,
   code_postal INT NOT NULL,
   FOREIGN KEY (code) REFERENCES Code_individu(code),
   FOREIGN KEY (numéro, rue, ville, code_postal) REFERENCES Adresse(numéro, rue, ville, code_postal)
);

CREATE TABLE Cours (
   nom VARCHAR(50),
   heure_de_debut TIMESTAMP,
   heure_de_fin TIMESTAMP,
   nom_matière VARCHAR(50) NOT NULL,
   code_prof INT NOT NULL,
   code_etudiant INT NOT NULL,
   PRIMARY KEY (nom, heure_de_debut, heure_de_fin),
   FOREIGN KEY (nom) REFERENCES Salle(nom),
   FOREIGN KEY (nom_matière) REFERENCES Matière(nom_matière),
   FOREIGN KEY (code_prof) REFERENCES Professeur(code),
   FOREIGN KEY (code_etudiant) REFERENCES Etudiant(code)
);

COMMIT;
