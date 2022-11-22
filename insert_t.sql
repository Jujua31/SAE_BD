INSERT INTO ZOO (IDZoo, nomZ, villeZ, paysZ, telZ, mailZ, nomrespZ) VALUES 
("Z001", 'Zoo de la Flèche', 'La Flèche', 'France', '02 43 48 19 19', 'm.dupon@gmail.com', 'M. Dupont'),
("Z002", 'Zoo de Beauval', 'Saint-Aignan', 'France', '02 47 96 10 10', 'mme.beauval@yahoo.fr', "Mme Beauval"),
("Z003", 'Zoo de la Barben', 'La Barben', 'France', '04 42 01 01 01', 'm.barben@outlook.com', 'M. Barben');

INSERT INTO ALIMENT (IdAliment, nomAliment) VALUES
(1, 'Viande'),
(2, 'Fruits'),
(3, 'Légumes'),
(4, 'Insectes'),
(5, 'Herbes'),
(6, 'Graines');

INSERT INTO ESPECES (codeEspece, NomScientifique, NomVulgaire) VALUES
(1, 'Panthera leo', 'Lion'),
(2, 'Panthera tigris', 'Tigre'),
(3, 'Panthera pardus', 'Léopard');

INSERT INTO FAMILLE (IdFamille, descriptionF) VALUES
(1, 'Famille des félidés'),
(2, 'Famille des canidés'),
(3, 'Famille des ursidés');

INSERT INTO ZONE_GEOGRAPHIQUE (IdZone, Libelle) VALUES
(1, 'Afrique'),
(2, 'Asie'),
(3, 'Europe'),
(4, 'Amérique du Nord'),
(5, 'Amérique du Sud'),
(6, 'Océanie');

INSERT INTO ANIMAUX (ID_ani, Nom, Sexe, Datenaissance, Date_arrivee, Remarques, codeEspece, IDZoo) VALUES
(1, 'Simba', 'M', '2010-01-01', '2010-01-01', 'Tigre blanc', 2, "Z001"),
(2, 'Mufasa', 'M', '2010-01-01', '2010-01-01', 'Tigre blanc', 2, "Z002"),
(3, 'Scar', 'M', '2010-01-01', '2010-01-01', 'Tigre blanc', 2, "Z003"),
(4, 'Nala', 'F', '2010-01-01', '2010-01-01', 'Léopard', 3, "Z001");

INSERT INTO TYPE (codeType, libelleType, libelleSousType, procedureSecu) VALUES
(1, 'Enclos', 'Enclos', 'AE45'),
(2, 'Aquarium', 'Aquarium', 'DCG23'),
(3, 'Volière', 'Volière', 'PPC89');

INSERT INTO EMPLACEMENT (IDZoo, codeEmplacement, situation, codeType) VALUES
(1, "E12", 'Secteur Enclos', 1),
(2, "E45", 'Secteur Aquarium', 2),
(3, "E46", 'Secteur Aquarium Sous', 2),
(1, "E89", 'Secteur Volière', 3);

INSERT INTO PRESENT (codeEmplacement, IdZone, PopZone) VALUES
("E12", "Z001", 20),
("E45", "Z002", 50),
("E46", "Z002", 6),
("E89", "Z003", 2);

INSERT INTO POSSEDE (IDZoo, IdAliment, stock) VALUES
("Z001", 1, 10),
("Z001", 2, 10),
("Z001", 3, 10),
("Z002", 1, 10),
("Z002", 2, 10),
("Z002", 6, 10),
("Z003", 1, 10),
("Z003", 2, 10),
("Z003", 6, 10);

INSERT INTO CONSOMME (codeEspece, IdAliment, quantite) VALUES
("E12", 1, 16),
("E12", 3, 7),
("E45", 1, 45),
("E45", 2, 32),
("E89", 1, 2),
("E89", 2, 50);

INSERT INTO ZOOLOGIQUE (IDZoo, EquipeRecherche) VALUES
("Z001", 'Equipe Recherche 1'),
("Z002", 'Equipe Recherche 2'),
("Z003", 'Equipe Recherche 3');

INSERT INTO SUBSTITUE (IdAliment, IdSubstitue, TauxRemplacement) VALUES
(1, 2, 50),
(1, 3, 20),
(2, 1, 10),
(2, 3, 6),
(3, 1, 4),
(3, 2, 1);