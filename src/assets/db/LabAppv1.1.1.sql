CREATE DATABASE if not exists LabApp;

CREATE TABLE if not exists WORKER ( 
    /*list of all people inducted or to be inducted*/
    WKR_ID int NOT NULL AUTO_INCREMENT,
    WRK_First varchar(18) NOT NULL,
    WKR_Last varchar(18) NOT NULL,
    WKR_Email varchar(50) NOT NULL,
    PRIMARY KEY (WKR_ID)
);

CREATE TABLE if not exists LAB_MANAGER ( 
    /*list of all lab managers*/
    LBM_ID int NOT NULL AUTO_INCREMENT,
    LBM_First varchar(18) NOT NULL,
    LBM_Last varchar(18) NOT NULL,
    LBM_Email varchar(50) NOT NULL,
    PRIMARY KEY (LBM_ID)
);

CREATE TABLE if not exists LAB ( 
    /*list of all labs details*/
    LAB_ID int NOT NULL AUTO_INCREMENT,
    LAB_Room varchar(10) NOT NULL,
    LAB_Type varchar(10) NOT NULL,
    LAB_FormID text(50) NOT NULL,
    PRIMARY KEY (LAB_ID)
);

CREATE TABLE if not exists INDUCTION ( 
    /*list of all members partaking in an induction (does not contain specific equipment trained on (SEE IND_EQP)*/
    IND_ID int NOT NULL AUTO_INCREMENT,
    WKR_ID int NOT NULL,
    LBM_ID int NOT NULL,
    LAB_ID int NOT NULL,
    IND_DATE date NOT NULL,
    NOTES text,
    PRIMARY KEY (IND_ID),
    FOREIGN KEY (WKR_ID) REFERENCES WORKER(WKR_ID),
    FOREIGN KEY (LBM_ID) REFERENCES LAB_MANAGER(LBM_ID),
    FOREIGN KEY (LAB_ID) REFERENCES LAB(LAB_ID)
);

CREATE TABLE if not exists EQUIPMENT ( 
    /*List of all equipment to be trained on*/
    EQP_ID int NOT NULL AUTO_INCREMENT,
    EQP_Name varchar(30) NOT NULL,
    EQP_Type varchar(10) NOT NULL,
    PRIMARY KEY (EQP_ID)
);

CREATE TABLE if not exists LAB_EQP ( 
    /*list of all equipment in labs*/
    EQP_ID int NOT NULL,
    LAB_ID int NOT NULL,
    Extra_Info varchar(10) NOT NULL,
    PRIMARY KEY (EQP_ID, LAB_ID),
    FOREIGN KEY (EQP_ID) REFERENCES EQUIPMENT(EQP_ID),
    FOREIGN KEY (LAB_ID) REFERENCES LAB(LAB_ID)
);

CREATE TABLE if not exists IND_EQP ( 
    /*list of all equipment trained on in inductions*/
    IND_ID int NOT NULL,
    EQP_ID int NOT NULL,
    Extra_Info varchar(10) NOT NULL,
    PRIMARY KEY (IND_ID, EQP_ID),
    FOREIGN KEY (EQP_ID) REFERENCES EQUIPMENT(EQP_ID),
    FOREIGN KEY (IND_ID) REFERENCES INDUCTION(IND_ID)
);


