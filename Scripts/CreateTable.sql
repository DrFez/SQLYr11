CREATE TABLE State (
    State_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    State VARCHAR(50) NOT NULL
);

CREATE TABLE Dog (
    Dog_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name VARCHAR(100) NOT NULL,
    Breed VARCHAR(100) NOT NULL,
    Age INTEGER NOT NULL,
    Special_Consideration TEXT,
    Age_Recommendation VARCHAR(100)
);

CREATE TABLE Incident (
    Incident_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Incident_Date DATE NOT NULL,
    Incident_Description TEXT
);

CREATE TABLE Handler (
    Handler_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Phone INTEGER NOT NULL,  -- Changed to INTEGER for phone number
    Email VARCHAR(100) NOT NULL,
    Emergency_First_Name VARCHAR(50) NOT NULL,
    Emergency_Last_Name VARCHAR(50) NOT NULL,
    Emergency_Phone INTEGER NOT NULL,  -- Changed to INTEGER for phone number
    Emergency_Email VARCHAR(100) NOT NULL,
    Street_Number INTEGER NOT NULL,  -- Changed to INTEGER for street number
    Street_Name VARCHAR(100) NOT NULL,
    Suburb VARCHAR(100) NOT NULL,
    State_ID INTEGER NOT NULL,
    Postcode INTEGER NOT NULL,  -- Changed to INTEGER for postcode
    FOREIGN KEY (State_ID) REFERENCES State(State_ID)
);

CREATE TABLE Veterinary_Detail (
    Vet_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Vet_Name VARCHAR(100) NOT NULL,
    Vet_Street_Number INTEGER NOT NULL,  -- Changed to INTEGER for street number
    Vet_Street_Name VARCHAR(100) NOT NULL,
    Vet_Suburb VARCHAR(100) NOT NULL,
    State_ID INTEGER NOT NULL,
    Postcode INTEGER NOT NULL,  -- Changed to INTEGER for postcode
    Vet_Phone INTEGER NOT NULL,  -- Changed to INTEGER for phone number
    FOREIGN KEY (State_ID) REFERENCES State(State_ID)
);

CREATE TABLE Dog_Handler (
    Dog_Handler_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Dog_ID INTEGER NOT NULL,
    Handler_ID INTEGER NOT NULL,
    FOREIGN KEY (Dog_ID) REFERENCES Dog(Dog_ID),
    FOREIGN KEY (Handler_ID) REFERENCES Handler(Handler_ID)
);

CREATE TABLE Dog_Vet (
    Dog_Vet_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Dog_ID INTEGER NOT NULL,
    Vet_ID INTEGER NOT NULL,
    FOREIGN KEY (Dog_ID) REFERENCES Dog(Dog_ID),
    FOREIGN KEY (Vet_ID) REFERENCES Veterinary_Detail(Vet_ID)
);

CREATE TABLE Handler_Incident (
    Handler_Incident_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Handler_ID INTEGER NOT NULL,
    Incident_ID INTEGER NOT NULL,
    FOREIGN KEY (Handler_ID) REFERENCES Handler(Handler_ID),
    FOREIGN KEY (Incident_ID) REFERENCES Incident(Incident_ID)
);

CREATE TABLE Dog_Incident (
    Dog_Incident_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Dog_ID INTEGER NOT NULL,
    Incident_ID INTEGER NOT NULL,
    FOREIGN KEY (Dog_ID) REFERENCES Dog(Dog_ID),
    FOREIGN KEY (Incident_ID) REFERENCES Incident(Incident_ID)
);

CREATE TABLE Result (
    Result_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Result VARCHAR NOT NUll
);

CREATE TABLE Assessment (
    Assessment_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Dog_ID INTEGER NOT NULL,
    Date DATE NOT NULL,
    Result_ID INTEGER,
    FOREIGN KEY (Dog_ID) REFERENCES Dog(Dog_ID),
    FOREIGN KEY (Result_ID) REFERENCES Result(Result_ID)
);

