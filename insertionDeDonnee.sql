-- Départements
INSERT INTO Departements (nom, localisation) VALUES
('Ressources Humaines', 'Bâtiment A'),
('Développement', 'Bâtiment B'),
('Marketing', 'Bâtiment C');
 
-- Employés
INSERT INTO Employes (nom, prenom, date_naissance, email, telephone, date_embauche, salaire, id_departement) VALUES
('Dupont', 'Jean', '1990-05-15', 'jean.dupont@example.com', '0123456789', '2022-01-10', 3000.00, 1),
('Martin', 'Sophie', '1985-08-23', 'sophie.martin@example.com', '0123456790', '2021-05-01', 3500.00, 2),
('Durand', 'Luc', '1992-12-05', 'luc.durand@example.com', '0123456791', '2023-03-15', 3200.00, 1);

-- Projets
INSERT INTO Projets (nom, description, date_debut, date_fin) VALUES
('Développement d''Application', 'Développement d''une application web pour la gestion des employés.', '2023-09-01', '2024-03-31'),
('Campagne Marketing', 'Lancement d''une nouvelle campagne marketing.', '2024-01-01', '2024-06-30');

-- Liaison d'Employés aux Projets
INSERT INTO Employe_Projets (id_employe, id_projet, role) VALUES
(1, 1, 'Développeur'),
(2, 2, 'Chef de Projet'),
(1, 2, 'Contributeur');

-- Évaluations
INSERT INTO Evaluations (id_employe, date_evaluation, note, commentaire) VALUES
(1, '2024-01-15', 4, 'Bon travail, mais peut améliorer la communication.'),
(2, '2024-01-20', 5, 'Excellent chef de projet, très organisé.'),
(3, '2024-01-25', 3, 'Doit améliorer ses compétences techniques.');
