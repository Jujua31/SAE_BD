INSERT INTO ZOO VALUES ('Z001', 'Zoo de la Flèche', 'La Flèche', 'France', '02 43 48 19 19', 'm.dupon@gmail.com', 'M. Dupont');
INSERT INTO ZOO VALUES ('Z002', 'Zoo de Beauval', 'Saint-Aignan', 'France', '02 47 96 10 10', 'mme.beauval@yahoo.fr', 'Mme Beauval');
INSERT INTO ZOO VALUES ('Z003', 'Zoo de la Barben', 'La Barben', 'France', '04 42 01 01 01', 'm.barben@outlook.com', 'M. Barben');
INSERT INTO ZOO VALUES ('Z003', 'Zoo qui marche pas', 'comprend pas', 'Kastovi', '36 30 36 30 00','m.jemarchepas@dommage.com', 'M. MarchePas') -- Insert ne fonctionnant pas car on ne peux pas changer les valeurs associés à la clé;

INSERT INTO ALIMENT VALUES (1, 'Viande');
INSERT INTO ALIMENT VALUES (2, 'Fruits');
INSERT INTO ALIMENT VALUES (3, 'Légumes');
INSERT INTO ALIMENT VALUES (4, 'Insectes');
INSERT INTO ALIMENT VALUES (5, 'Herbes');
INSERT INTO ALIMENT VALUES (6, 'Graines');
INSERT INTO ALIMENT VALUES (1, 'Frigo') -- Insert ne fonctionnant pas car on ne peux pas changer les valeurs associés à la clé;

INSERT INTO ESPECES VALUES (1, 'Panthera leo', 'Lion');
INSERT INTO ESPECES VALUES (2, 'Panthera tigris', 'Tigre');
INSERT INTO ESPECES VALUES (3, 'Panthera pardus', 'Léopard');
INSERT INTO ESPECES VALUES (1, 'Homo Abilis', 'Humain') -- Insert ne fonctionnant pas car on ne peux pas changer les valeurs associés à la clé;

INSERT INTO FAMILLE VALUES (1, 'Famille des félidés');
INSERT INTO FAMILLE VALUES (2, 'Famille des canidés');
INSERT INTO FAMILLE VALUES (3, 'Famille des ursidés');
INSERT INTO FAMILLE VALUES (1, 'Famille de Yannis') -- Insert ne fonctionnant pas car on ne peux pas changer les valeurs associés à la clé;

INSERT INTO ZONE_GEOGRAPHIQUE VALUES (1, 'Afrique');
INSERT INTO ZONE_GEOGRAPHIQUE VALUES (2, 'Asie');
INSERT INTO ZONE_GEOGRAPHIQUE VALUES (3, 'Europe');
INSERT INTO ZONE_GEOGRAPHIQUE VALUES (4, 'Amérique du Nord');
INSERT INTO ZONE_GEOGRAPHIQUE VALUES (5, 'Amérique du Sud');
INSERT INTO ZONE_GEOGRAPHIQUE VALUES (6, 'Océanie');
INSERT INTO ZONE_GEOGRAPHIQUE VALUES (1, 'Endroit inventé') -- Insert ne fonctionnant pas car on ne peux pas changer les valeurs associés à la clé;

INSERT INTO ANIMAUX VALUES (1, 'Simba', 'M', TO_DATE('20100101', 'YYYYMMDD'), TO_DATE('20200520','YYYYMMDD'), 'Tigre blanc', 2, 'Z001');
INSERT INTO ANIMAUX VALUES (2, 'Mufasa', 'M', TO_DATE('20040530','YYYYMMDD'), TO_DATE('20180530', 'YYYYMMDD'), 'Tigre blanc', 2, 'Z002');
INSERT INTO ANIMAUX VALUES (3, 'Scar', 'M', TO_DATE('20040831','YYYYMMDD'), TO_DATE('20040831','YYYYMMDD'), 'Tigre blanc', 2, 'Z003');
INSERT INTO ANIMAUX VALUES (4, 'Nala', 'F', TO_DATE('20040930','YYYYMMDD'), TO_DATE('20040930','YYYYMMDD'), 'Léopard', 3, 'Z001');
INSERT INTO ANIMAUX VALUES (1, 'Khalil', 'F', TO_DATE('00010101','YYYYMMDD'), TO_DATE('00010102', 'YYYYMMDD'), 'Khabox', 2, 'Z001') -- Insert ne fonctionnant pas car on ne peux pas changer les valeurs associés à la clé;
INSERT INTO ANIMAUX VALUES (5, 'Khalil', 'F', TO_DATE('00010101','YYYYMMDD'), TO_DATE('00010102', 'YYYYMMDD'), 'Khabox', 2, 'Z005') -- Insert ne fonctionnant pas car ...;
INSERT INTO ANIMAUX VALUES (6, 'Khalil', 'F', TO_DATE('00010101','YYYYMMDD'), TO_DATE('00010102', 'YYYYMMDD'), 'Khabox', 9, 'Z001') -- Insert ne fonctionnant pas car ...;



INSERT INTO TYPE VALUES (1, 'Enclos', 'Enclos', 'AE45');
INSERT INTO TYPE VALUES (2, 'Aquarium', 'Aquarium', 'DCG23');
INSERT INTO TYPE VALUES (3, 'Volière', 'Volière', 'PPC89');
INSERT INTO TYPE VALUES (2, 'Juliann', 'Chambre', 'SOS87') -- Insert ne fonctionnant pas car on ne peux pas changer les valeurs associés à la clé;

INSERT INTO EMPLACEMENT VALUES ('Z001', 'E12', 'Secteur Enclos', 1);
INSERT INTO EMPLACEMENT VALUES ('Z002', 'E45', 'Secteur Aquarium', 2);
INSERT INTO EMPLACEMENT VALUES ('Z003', 'E46', 'Secteur Aquarium Sous', 2);
INSERT INTO EMPLACEMENT VALUES ('Z001', 'E89', 'Secteur Volière', 3);
INSERT INTO EMPLACEMENT VALUES ('Z001', 'E12', 'Secteur Qui Marche Pas', 1) -- Insert ne fonctionnant pas car on ne peux pas changer les valeurs associés à la clé;
INSERT INTO EMPLACEMENT VALUES ('Z005', 'E12', 'Secteur Qui Marche Pas', 1) -- Insert ne fonctionnant pas car la clé IDZoo n'existe pas;
INSERT INTO EMPLACEMENT VALUES ('Z003', 'E12', 'Secteur Qui Marche Pas', 9) -- Insert ne fonctionnant pas car la clé codeType n'existe pas;

INSERT INTO PRESENT VALUES (1, 6, 20);
INSERT INTO PRESENT VALUES (2, 4, 50);
INSERT INTO PRESENT VALUES (2, 3, 6);
INSERT INTO PRESENT VALUES (3, 1, 2);
INSERT INTO PRESENT VALUES (1, 6, 50) -- Insert ne fonctionnant pas car on ne peux pas changer les valeurs associés à la clé;
INSERT INTO PRESENT VALUES (9, 6, 50) -- Insert ne fonctionnant pas car la clé codeEspece n'existe pas;
INSERT INTO PRESENT VALUES (1, 9, 50) -- Insert ne fonctionnant pas car la clé IdZone n'existe pas;

INSERT INTO POSSEDE VALUES ('Z001', 1, 10);
INSERT INTO POSSEDE VALUES ('Z001', 2, 50);
INSERT INTO POSSEDE VALUES ('Z001', 3, 200);
INSERT INTO POSSEDE VALUES ('Z002', 1, 78);
INSERT INTO POSSEDE VALUES ('Z002', 2, 31);
INSERT INTO POSSEDE VALUES ('Z002', 6, 19);
INSERT INTO POSSEDE VALUES ('Z003', 1, 8);
INSERT INTO POSSEDE VALUES ('Z003', 2, 0);
INSERT INTO POSSEDE VALUES ('Z003', 6, 411);
INSERT INTO POSSEDE VALUES ('Z002', 1, 99) -- Insert ne fonctionnant pas car on ne peux pas changer les valeurs associés à la clé;
INSERT INTO POSSEDE VALUES ('Z005', 1, 99) -- Insert ne fonctionnant pas car la clé IDZoo n'existe pas;
INSERT INTO POSSEDE VALUES ('Z002', 9, 99) -- Insert ne fonctionnant pas car la clé IdAliment n'existe pas;

INSERT INTO CONSOMME VALUES (1, 1, 16);
INSERT INTO CONSOMME VALUES (2, 2, 7);
INSERT INTO CONSOMME VALUES (3, 3, 45);
INSERT INTO CONSOMME VALUES (1, 4, 32);
INSERT INTO CONSOMME VALUES (3, 5, 2);
INSERT INTO CONSOMME VALUES (2, 6, 50);
INSERT INTO CONSOMME VALUES (3, 5, 100) -- Insert ne fonctionnant pas car on ne peux pas changer les valeurs associés à la clé;
INSERT INTO CONSOMME VALUES (9, 5, 100) -- Insert ne fonctionnant pas car la clé codeEspece n'existe pas;
INSERT INTO CONSOMME VALUES (3, 9, 100) -- Insert ne fonctionnant pas car la clé IdAliment n'existe pas;

INSERT INTO SAFARI VALUES ('Z001', 500,'Voiture');
INSERT INTO SAFARI VALUES ('Z002', 100,'Vélo');
INSERT INTO SAFARI VALUES ('Z003', 300,'Pied');
INSERT INTO SAFARI VALUES ('Z001', 10, 'Rien') -- Insert ne fonctionnant pas car on ne peux pas changer les valeurs associés à la clé;
INSERT INTO SAFARI VALUES ('Z005', 10, 'Rien') -- Insert ne fonctionnant pas car la clé IDZoo n'existe pas;

INSERT INTO ZOOLOGIQUE VALUES ('Z001', 'Equipe Recherche 1');
INSERT INTO ZOOLOGIQUE VALUES ('Z002', 'Equipe Recherche 2');
INSERT INTO ZOOLOGIQUE VALUES ('Z003', 'Equipe Recherche 3');
INSERT INTO ZOOLOGIQUE VALUES ('Z002', 'Equipe Qui Marche Pas') -- Insert ne fonctionnant pas car on ne peux pas changer les valeurs associés à la clé;
INSERT INTO ZOOLOGIQUE VALUES ('Z005', 'Equipe Qui Marche Pas') -- Insert ne fonctionnant pas car la clé IDZoo n'existe pas;

INSERT INTO SUBSTITUE VALUES (1, 2, 50);
INSERT INTO SUBSTITUE VALUES (1, 3, 20);
INSERT INTO SUBSTITUE VALUES (2, 1, 10);
INSERT INTO SUBSTITUE VALUES (2, 3, 6);
INSERT INTO SUBSTITUE VALUES (3, 1, 4);
INSERT INTO SUBSTITUE VALUES (3, 2, 1);
INSERT INTO SUBSTITUE VALUES (2, 3, 1000)  -- Insert ne fonctionnant pas car on ne peux pas changer les valeurs associés à la clé;
INSERT INTO SUBSTITUE VALUES (9, 3, 1000)  -- Insert ne fonctionnant pas car la clé IdAliment n'existe pas;
INSERT INTO SUBSTITUE VALUES (2, 9, 1000)  -- Insert ne fonctionnant pas car IdSubstitue;
