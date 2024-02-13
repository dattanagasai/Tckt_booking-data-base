CREATE TABLE Movie (
    HomeID INT PRIMARY KEY,
    Size FLOAT,
    EcoCert BOOLEAN
);

CREATE TABLE Theatres (
    CustID INT PRIMARY KEY,
    Email VARCHAR(100),
    Purchases INT
);

CREATE TABLE Payments (
    MatID INT PRIMARY KEY,
    Name VARCHAR(50),
    QuantityAvailable INT
);


CREATE TABLE Bookings (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(100),
    Role VARCHAR(50),
    Grade INT
);

CREATE TABLE Shows (
    SuppID INT PRIMARY KEY,
    Name VARCHAR(100),
    MaterialType VARCHAR(50),
    ItemsSupplied INT
);


LOAD DATA LOCAL INFILE 'c:/DB_sakula/movie.csv' INTO table movie FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n' IGNORE 1 LINES;