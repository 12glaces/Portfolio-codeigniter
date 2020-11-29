#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Ci_home
#------------------------------------------------------------

CREATE TABLE Ci_home(
        id_home          Int  Auto_increment  NOT NULL ,
        titre            Varchar (250) NOT NULL ,
        titredescription Varchar (250) NOT NULL ,
        description      Varchar (250) NOT NULL
	,CONSTRAINT Ci_home_PK PRIMARY KEY (id_home)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Ci_apropos
#------------------------------------------------------------

CREATE TABLE Ci_apropos(
        id_apro  Int  Auto_increment  NOT NULL ,
        nom      Varchar (50) NOT NULL ,
        prenom   Varchar (50) NOT NULL ,
        titre    Varchar (250) NOT NULL ,
        texte    Varchar (250) NOT NULL ,
        dateNess Varchar (250) NOT NULL
	,CONSTRAINT Ci_apropos_PK PRIMARY KEY (id_apro)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Ci_experiences 
#------------------------------------------------------------

CREATE TABLE Ci_experiences(
        id_exp     Int  Auto_increment  NOT NULL ,
        titre      Varchar (250) NOT NULL ,
        texte      Varchar (250) NOT NULL ,
        entreprise Varchar (250) NOT NULL ,
        adress     Varchar (250) NOT NULL
	,CONSTRAINT Ci_experiences_PK PRIMARY KEY (id_exp)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Ci_contact_page
#------------------------------------------------------------

CREATE TABLE Ci_contact_page(
        id_contact Int  Auto_increment  NOT NULL ,
        nom        Varchar (50) NOT NULL ,
        prenom     Varchar (50) NOT NULL ,
        adresse    Varchar (50) NOT NULL ,
        email      Varchar (50) NOT NULL ,
        texte      Varchar (250) NOT NULL
	,CONSTRAINT Ci_contact_page_PK PRIMARY KEY (id_contact)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Veille
#------------------------------------------------------------

CREATE TABLE Ci_veille(
        id_Veille Int  Auto_increment  NOT NULL ,
        nomVeille Varchar (250) NOT NULL ,
        lien      Varchar (250) NOT NULL ,
        texte     Varchar (250) NOT NULL ,
        date      Date NOT NULL
	,CONSTRAINT Ci_veille PRIMARY KEY (id_Veille)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Ci_contact
#------------------------------------------------------------

CREATE TABLE Ci_contact(
        id_contact Int  Auto_increment  NOT NULL ,
        nom        Varchar (50) NOT NULL ,
        prenom     Varchar (50) NOT NULL ,
        email      Varchar (50) NOT NULL ,
        objet      Varchar (2500) NOT NULL ,
        texte      Varchar (2500) NOT NULL
	,CONSTRAINT Ci_contact_PK PRIMARY KEY (id_contact)
)ENGINE=InnoDB;

