CREATE TABLE ZOO (
    IDZoo VARCHAR2(10) NOT NULL,
    nomZ VARCHAR2(50) ,
    villeZ VARCHAR2(50) ,
    paysZ VARCHAR2(50) ,
    telZ VARCHAR2(50) ,
    mailZ VARCHAR2(50) ,
    nomrespZ VARCHAR2(50) ,
    PRIMARY KEY (IDZoo)
);

CREATE TABLE ALIMENT(
    IdAliment NUMBER(2) NOT NULL,
    nomAliment VARCHAR2(50),
    PRIMARY KEY (IdAliment)
);

CREATE TABLE ESPECES(
    codeEspece NUMBER(2) NOT NULL,
    NomScientifique VARCHAR2(50),
    NomVulgaire VARCHAR2(50),
    PRIMARY KEY (codeEspece)
);

CREATE TABLE FAMILLE(
    IdFamille NUMBER(2) NOT NULL,
    descriptionF VARCHAR2(50),
    PRIMARY KEY (IdFamille)
);

CREATE TABLE ZONE_GEOGRAPHIQUE(
    IdZone NUMBER(2) NOT NULL,
    Libelle VARCHAR2(50),
    PRIMARY KEY (IdZone)
);

CREATE TABLE ANIMAUX(
    ID_ani NUMBER(2) NOT NULL,
    Nom VARCHAR2(50),
    Sexe VARCHAR2(50),
    Datenaissance DATE,
    Date_arrivee DATE,
    Remarques VARCHAR2(50),
    codeEspece NUMBER(2) NOT NULL,
    IDZoo NUMBER(2) NOT NULL,
    FOREIGN KEY (codeEspece) REFERENCES ESPECES(codeEspece),
    FOREIGN KEY (IDZoo) REFERENCES ZOO(IDZoo),
    PRIMARY KEY (ID_ani)
);

CREATE TABLE TYPE(
    codeType NUMBER(2) NOT NULL,
    libelleType VARCHAR2(50),
    libelleSousType VARCHAR2(50),
    procedureSecu VARCHAR2(50),
    PRIMARY KEY (codeType)
);

CREATE TABLE EMPLACEMENT(
    IDZoo NUMBER(2) NOT NULL,
    codeEmplacement VARCHAR2(10) NOT NULL,
    situation VARCHAR2(50),
    codeType NUMBER(2) NOT NULL,
    FOREIGN KEY (IDZoo) REFERENCES ZOO(IDZoo),
    FOREIGN KEY (codeType) REFERENCES TYPE(codeType),
    PRIMARY KEY (IDZoo, codeEmplacement)
);

CREATE TABLE PRESENT(
    codeEspece NUMBER(2) NOT NULL,
    Idzone NUMBER(2) NOT NULL,
    PopZone NUMBER(2) NOT NULL,
    FOREIGN KEY (codeEspece) REFERENCES ESPECES(codeEspece),
    FOREIGN KEY (IdZone) REFERENCES ZONE_GEOGRAPHIQUE(IdZone),
    PRIMARY KEY (codeEspece, Idzone)
);


CREATE TABLE POSSEDE (
    IDZoo NUMBER(2) NOT NULL,
    IdAliment NUMBER(2) NOT NULL,
    stock NUMBER(2) NOT NULL,
    FOREIGN KEY (IDZoo) REFERENCES ZOO(IDZoo),
    FOREIGN KEY (IdAliment) REFERENCES ALIMENT(IdAliment),
    PRIMARY KEY (IDZoo, IdAliment)
);

CREATE TABLE CONSOMME(
    codeEspece NUMBER(2) NOT NULL,
    IdAliment NUMBER(2) NOT NULL,
    quantite NUMBER(10),
    FOREIGN KEY (codeEspece) REFERENCES ESPECES(codeEspece),
    FOREIGN KEY (IdAliment) REFERENCES ALIMENT(IdAliment),
    PRIMARY KEY (codeEspece, IdAliment)
);

CREATE TABLE SAFARI(
    IDZoo NUMBER(2) NOT NULL,
    Superficie NUMBER(10),
    Locomotion VARCHAR2(50),
    FOREIGN KEY (IDZoo) REFERENCES ZOO(IDZoo),
    PRIMARY KEY (IDZoo)
);

CREATE TABLE ZOOLOGIQUE(
    IDZoo NUMBER(2) NOT NULL,
    EquipeRecherche VARCHAR2(50),
    FOREIGN KEY (IDZoo) REFERENCES ZOO(IDZoo),
    PRIMARY KEY (IDZoo)
);

CREATE TABLE SUBSTITUE(
    IdAliment NUMBER(2) NOT NULL,
    IdSubstitue NUMBER(2) NOT NULL,
    TauxRemplacement NUMBER(10),
    FOREIGN KEY (IdAliment) REFERENCES ALIMENT(IdAliment),
    FOREIGN KEY (IdSubstitue) REFERENCES ALIMENT(IdAliment),
    PRIMARY KEY (IdAliment, IdSubstitue)
);
