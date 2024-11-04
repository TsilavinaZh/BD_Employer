-- Création de la base de données
CREATE DATABASE IF NOT EXISTS GestionEmployes;

-- Utilisation de la base de données
USE GestionEmployes;

-- Table des Départements
CREATE TABLE IF NOT EXISTS Departements (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    localisation VARCHAR(100)
);

-- Table des Employés
CREATE TABLE IF NOT EXISTS Employes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    date_naissance DATE,
    email VARCHAR(100) UNIQUE NOT NULL,
    telephone VARCHAR(15),
    date_embauche DATE,
    salaire DECIMAL(10, 2),
    id_departement INT,
    FOREIGN KEY (id_departement) REFERENCES Departements(id)
);

-- Table des Projets
CREATE TABLE IF NOT EXISTS Projets (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    description TEXT,
    date_debut DATE,
    date_fin DATE
);

-- Table de liaison entre Employés et Projets
CREATE TABLE IF NOT EXISTS Employe_Projets (
    id_employe INT,
    id_projet INT,
    role VARCHAR(50),
    PRIMARY KEY (id_employe, id_projet),
    FOREIGN KEY (id_employe) REFERENCES Employes(id),
    FOREIGN KEY (id_projet) REFERENCES Projets(id)
);

-- Table des Évaluations
CREATE TABLE IF NOT EXISTS Evaluations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_employe INT,
    date_evaluation DATE,
    note INT CHECK (note BETWEEN 1 AND 5),
    commentaire TEXT,
    FOREIGN KEY (id_employe) REFERENCES Employes(id)
);



