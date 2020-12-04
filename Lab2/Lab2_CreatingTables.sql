CREATE TABLE ManufacturerCompany(
  ManufacturerName CHAR(15) NOT NULL,
  City CHAR(15) NOT NULL,
  Country CHAR(20) NOT NULL,
  PRIMARY KEY ( ManufacturerName )
);


CREATE TABLE CarrierCompany(
  ShortName CHAR(4)  NOT NULL,
  FullName CHAR(20) NOT NULL,
  RegistrationCountry CHAR(3) NOT NULL,
  PRIMARY KEY (ShortName),  
);


CREATE TABLE Planes(
  PlaneID INTEGER NOT NULL,
  PlaneModel CHAR(15) NOT NULL,
  ManufacturerName CHAR(15),
  Capacity INTEGER NOT NULL,
  Engine CHAR(20) NOT NULL,
  NumberOfEngines INTEGER NOT NULL, 
  PRIMARY KEY (PlaneID),
  CONSTRAINT manufacturer_name
  FOREIGN KEY(ManufacturerName)
  REFERENCES ManufacturerCompany 
  ON DELETE CASCADE
  ON UPDATE CASCADE

);


CREATE TABLE ArrivalTo(
  ArrivalID INTEGER NOT NULL IDENTITY(1,1),
  AirportN CHAR(4) NOT NULL,
  City CHAR(15) NOT NULL,
  Country CHAR(20) NOT NULL,
  PRIMARY KEY (ArrivalID),
);

CREATE TABLE Passangers(
  PassangerID INTEGER NOT NULL IDENTITY(1,1),
  Surname CHAR(15) NOT NULL,
  Name CHAR(15) NOT NULL,
  Sex CHAR(10) NOT NULL,
  PRIMARY KEY (PassangerID),
  
);

CREATE TABLE AirportInfo(
  AirportID INTEGER NOT NULL IDENTITY(1,1),
  Country CHAR(20) NOT NULL,
  City CHAR(15) NOT NULL,
  PRIMARY KEY (AirportID),
  
);


CREATE TABLE Flights(
  FlightID INTEGER NOT NULL IDENTITY(1,1),
  ShortName CHAR(4),
  AirportID INTEGER,
  ArrivalID INTEGER,
  PlaneID INTEGER,
  PRIMARY KEY (FlightID),
  CONSTRAINT carrier_company
  FOREIGN KEY(ShortName)
  REFERENCES CarrierCompany 
  ON DELETE CASCADE
  ON UPDATE CASCADE,
  CONSTRAINT airport
  FOREIGN KEY(AirportID)
  REFERENCES AirportInfo
  ON DELETE CASCADE
  ON UPDATE CASCADE,
  CONSTRAINT arrival_air
  FOREIGN KEY(ArrivalID)
  REFERENCES ArrivalTo 
  ON DELETE CASCADE
  ON UPDATE CASCADE,
  CONSTRAINT plane_number
  FOREIGN KEY(PlaneID)
  REFERENCES Planes 
  ON DELETE CASCADE
  ON UPDATE CASCADE,
);


CREATE TABLE Tickets(
  TicketID INTEGER NOT NULL IDENTITY(1,1),
  FlightID INTEGER,
  PassangerID INTEGER,
  PRIMARY KEY (TicketID),
  CONSTRAINT flights_id
  FOREIGN KEY(FlightID)
  REFERENCES Flights
  ON DELETE CASCADE
  ON UPDATE CASCADE,
  CONSTRAINT passanger_id
  FOREIGN KEY(PassangerID)
  REFERENCES Passangers
  ON DELETE CASCADE
  ON UPDATE CASCADE,
);