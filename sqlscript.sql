REM   Script: project
REM   project

CREATE TABLE Platforms (  
    PlatformID NUMBER PRIMARY KEY,  
    PlatformNumber VARCHAR2(10) NOT NULL,  
    PlatformType VARCHAR2(50) CHECK (PlatformType IN ('Arrival', 'Departure'))  
) ;

CREATE TABLE Trains (  
    TrainID NUMBER PRIMARY KEY,  
    TrainName VARCHAR2(100) NOT NULL,  
    TrainType VARCHAR2(50),  
    ArrivalTime TIMESTAMP,  
    DepartureTime TIMESTAMP,  
    StopDuration NUMBER   
) ;

CREATE TABLE Stalls (  
    StallID NUMBER PRIMARY KEY,  
    StallName VARCHAR2(100) NOT NULL,  
    StallType VARCHAR2(50) NOT NULL,  
    Location NUMBER REFERENCES Platforms(PlatformID),  
    ContactNumber VARCHAR2(20),  
    OwnerName VARCHAR2(100),  
    StallStatus VARCHAR2(50) CHECK (StallStatus IN ('Open', 'Closed', 'Under Maintenance')),  
      
) ;

CREATE TABLE Stalls (  
    StallID NUMBER PRIMARY KEY,  
    StallName VARCHAR2(100) NOT NULL,  
    StallType VARCHAR2(50) NOT NULL,  
    Location NUMBER REFERENCES Platforms(PlatformID),  
    ContactNumber VARCHAR2(20),  
    OwnerName VARCHAR2(100),  
    StallStatus VARCHAR2(50) CHECK (StallStatus IN ('Open', 'Closed', 'Under Maintenance'))  
      
) ;

CREATE TABLE Passengers (  
    PassengerID NUMBER PRIMARY KEY,  
    Name VARCHAR2(100) NOT NULL,  
    Age NUMBER,  
    Gender VARCHAR2(10),  
    ContactNumber VARCHAR2(20),  
      
) ;

CREATE TABLE Passengers (  
    PassengerID NUMBER PRIMARY KEY,  
    Name VARCHAR2(100) NOT NULL,  
    Age NUMBER,  
    Gender VARCHAR2(10),  
    ContactNumber VARCHAR2(20)  
      
) ;

CREATE TABLE Catalog (  
    ItemID NUMBER PRIMARY KEY,  
    StallID NUMBER REFERENCES Stalls(StallID),  
    ItemName VARCHAR2(100) NOT NULL,  
    ItemType VARCHAR2(50),  
    Price NUMBER,  
    ItemStatus VARCHAR2(100) CHECK (ItemStatus IN ('IN Stock', 'Out of Stock'))  
) ;

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, StopDuration)  
VALUES (1, 'Rajdhani Express', 'Express', '2024-04-17 08:00:00', '2024-04-17 08:15:00', 15);

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, StopDuration)  
VALUES (2, 'Shatabdi Express', 'Express', '2024-04-17 09:30:00', '2024-04-17 09:45:00', 15);

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, StopDuration)  
VALUES (3, 'Duronto Express', 'Express', '2024-04-17 10:30:00', '2024-04-17 10:45:00', 15);

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, StopDuration)  
VALUES (4, 'Garib Rath Express', 'Express', '2024-04-17 12:00:00', '2024-04-17 12:15:00', 15);

[12:19 pm, 10/5/2024] Siddhanth Nagrath: -- Inserting more data for arriving trains 


INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, StopDuration)  
VALUES (5, 'Purushottam Express', 'Express', '2024-04-17 14:00:00', '2024-04-17 14:15:00', 15);

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, StopDuration)  
VALUES (6, 'Jammu Mail', 'Mail', '2024-04-17 15:30:00', '2024-04-17 15:45:00', 15);

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, StopDuration)  
VALUES (7, 'Rajasthan Sampark Kranti Express', 'Express', '2024-04-17 16:30:00', '2024-04-17 16:45:00', 15);

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, StopDuration)  
VALUES (8, 'Howrah Rajdhani Express', 'Rajdhani', '2024-04-17 18:00:00', '2024-04-17 18:15:00', 15);

drop table Trains;

CREATE TABLE Trains (  
    TrainID NUMBER PRIMARY KEY,  
    TrainName VARCHAR2(100) NOT NULL,  
    TrainType VARCHAR2(50),  
    ArrivalTime TIMESTAMP,  
    DepartureTime TIMESTAMP,  
    StopDuration NUMBER   
) ;

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, StopDuration)  
VALUES (1, 'Rajdhani Express', 'Express', '2024-04-17 08:00:00', '2024-04-17 08:15:00', 15);

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, StopDuration)  
VALUES (2, 'Shatabdi Express', 'Express', '2024-04-17 09:30:00', '2024-04-17 09:45:00', 15);

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, StopDuration)  
VALUES (3, 'Duronto Express', 'Express', '2024-04-17 10:30:00', '2024-04-17 10:45:00', 15);

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, StopDuration)  
VALUES (4, 'Garib Rath Express', 'Express', '2024-04-17 12:00:00', '2024-04-17 12:15:00', 15);

[12:19 pm, 10/5/2024] Siddhanth Nagrath: -- Inserting more data for arriving trains 


INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, StopDuration)  
VALUES (5, 'Purushottam Express', 'Express', '2024-04-17 14:00:00', '2024-04-17 14:15:00', 15);

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, StopDuration)  
VALUES (6, 'Jammu Mail', 'Mail', '2024-04-17 15:30:00', '2024-04-17 15:45:00', 15);

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, StopDuration)  
VALUES (7, 'Rajasthan Sampark Kranti Express', 'Express', '2024-04-17 16:30:00', '2024-04-17 16:45:00', 15);

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, StopDuration)  
VALUES (8, 'Howrah Rajdhani Express', 'Rajdhani', '2024-04-17 18:00:00', '2024-04-17 18:15:00', 15);

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, StopDuration)  
VALUES (1, 'Express Train 1', 'Express', TIMESTAMP '2024-05-10 08:00:00', TIMESTAMP '2024-05-10 08:15:00', 15);

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, StopDuration)  
VALUES (2, 'Express Train 2', 'Express', TIMESTAMP '2024-05-10 09:30:00', TIMESTAMP '2024-05-10 09:45:00', 15);

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, StopDuration)  
VALUES (3, 'Mail Train 1', 'Mail', TIMESTAMP '2024-05-10 10:30:00', TIMESTAMP '2024-05-10 10:45:00', 15);

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, StopDuration)  
VALUES (4, 'Express Train 3', 'Express', TIMESTAMP '2024-05-10 12:00:00', TIMESTAMP '2024-05-10 12:15:00', 15);

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, StopDuration)  
VALUES (5, 'Mail Train 2', 'Mail', TIMESTAMP '2024-05-10 14:00:00', TIMESTAMP '2024-05-10 14:15:00', 15);

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, StopDuration)  
VALUES (6, 'Express Train 4', 'Express', TIMESTAMP '2024-05-10 15:00:00', TIMESTAMP '2024-05-10 15:15:00', 15);

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, StopDuration)  
VALUES (7, 'Mail Train 3', 'Mail', TIMESTAMP '2024-05-10 16:30:00', TIMESTAMP '2024-05-10 16:45:00', 15);

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, StopDuration)  
VALUES (8, 'Express Train 5', 'Express', TIMESTAMP '2024-05-10 18:00:00', TIMESTAMP '2024-05-10 18:15:00', 15);

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, StopDuration)  
VALUES (9, 'Mail Train 4', 'Mail', TIMESTAMP '2024-05-10 20:00:00', TIMESTAMP '2024-05-10 20:15:00', 15);

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, StopDuration)  
VALUES (10, 'Express Train 6', 'Express', TIMESTAMP '2024-05-10 22:00:00', TIMESTAMP '2024-05-10 22:15:00', 15);

select * from Trains;

drop table Platforms 
    drop table Trains;

drop table Platforms;

    drop table Trains;

drop table Platforms;

drop Catalog;

drop table Passengers;

drop table Catalog;

drop table Stalls;

drop table Trains;

   drop table Trains;

drop table Platforms;

CREATE TABLE Platforms (  
    PlatformID NUMBER PRIMARY KEY,  
    PlatformNumber VARCHAR2(10) NOT NULL,  
    PlatformType VARCHAR2(50) CHECK (PlatformType IN ('Arrival', 'Departure'))  
);

CREATE TABLE Trains (  
    TrainID NUMBER PRIMARY KEY,  
    TrainName VARCHAR2(100) NOT NULL,  
    TrainType VARCHAR2(50),  
    ArrivalTime TIMESTAMP,  
    DepartureTime TIMESTAMP,  
    PlatformID NUMBER REFERENCES Platforms(PlatformID) 
);

INSERT INTO Platforms (PlatformID, PlatformNumber, PlatformType)  
VALUES (1, 'Platform 1', 'Arrival');

INSERT INTO Platforms (PlatformID, PlatformNumber, PlatformType)  
VALUES (2, 'Platform 2', 'Departure');

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, PlatformID)  
VALUES (1, 'Express Train 1', 'Express', TIMESTAMP '2024-05-10 08:00:00', TIMESTAMP '2024-05-10 08:15:00', 1);

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, PlatformID)  
VALUES (2, 'Express Train 2', 'Express', TIMESTAMP '2024-05-10 09:30:00', TIMESTAMP '2024-05-10 09:45:00', 1);

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, PlatformID)  
VALUES (3, 'Mail Train 1', 'Mail', TIMESTAMP '2024-05-10 10:30:00', TIMESTAMP '2024-05-10 10:45:00', 2);

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, PlatformID)  
VALUES (4, 'Express Train 3', 'Express', TIMESTAMP '2024-05-10 12:00:00', TIMESTAMP '2024-05-10 12:15:00', 2);

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, PlatformID)  
VALUES (5, 'Mail Train 2', 'Mail', TIMESTAMP '2024-05-10 14:00:00', TIMESTAMP '2024-05-10 14:15:00', 1);

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, PlatformID)  
VALUES (6, 'Express Train 4', 'Express', TIMESTAMP '2024-05-10 15:00:00', TIMESTAMP '2024-05-10 15:15:00', 2);

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, PlatformID)  
VALUES (7, 'Mail Train 3', 'Mail', TIMESTAMP '2024-05-10 16:30:00', TIMESTAMP '2024-05-10 16:45:00', 1);

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, PlatformID)  
VALUES (8, 'Express Train 5', 'Express', TIMESTAMP '2024-05-10 18:00:00', TIMESTAMP '2024-05-10 18:15:00', 2);

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, PlatformID)  
VALUES (9, 'Mail Train 4', 'Mail', TIMESTAMP '2024-05-10 20:00:00', TIMESTAMP '2024-05-10 20:15:00', 1);

INSERT INTO Trains (TrainID, TrainName, TrainType, ArrivalTime, DepartureTime, PlatformID)  
VALUES (10, 'Express Train 6', 'Express', TIMESTAMP '2024-05-10 22:00:00', TIMESTAMP '2024-05-10 22:15:00', 2);

select * from Platforms;

select * from Trains;

select * from Platforms;

select * from Trains;

CREATE TABLE Catalog (  
    ItemID NUMBER PRIMARY KEY,  
    StallID NUMBER REFERENCES Stalls(StallID),  
    ItemName VARCHAR2(100) NOT NULL,  
    ItemType VARCHAR2(50),  
    Price NUMBER,  
    ItemStatus VARCHAR2(100) CHECK (ItemStatus IN ('IN Stock', 'Out of Stock'))  
);

CREATE TABLE Catalog (  
    ItemID NUMBER PRIMARY KEY,  
    StallID NUMBER REFERENCES Stalls(StallID),  
    ItemName VARCHAR2(100) NOT NULL,  
    ItemType VARCHAR2(50),  
    Price NUMBER,  
    ItemStatus VARCHAR2(100) CHECK (ItemStatus IN ('IN Stock', 'Out of Stock'))  
);

CREATE TABLE Stalls (  
    StallID NUMBER PRIMARY KEY,  
    StallName VARCHAR2(100) NOT NULL,  
    StallType VARCHAR2(50) NOT NULL,  
    Location NUMBER REFERENCES Platforms(PlatformID),  
    ContactNumber VARCHAR2(20),  
    OwnerName VARCHAR2(100),  
    StallStatus VARCHAR2(50) CHECK (StallStatus IN ('Open', 'Closed', 'Under Maintenance'))  
      
) ;

CREATE TABLE Catalog (  
    ItemID NUMBER PRIMARY KEY,  
    StallID NUMBER REFERENCES Stalls(StallID),  
    ItemName VARCHAR2(100) NOT NULL,  
    ItemType VARCHAR2(50),  
    Price NUMBER,  
    ItemStatus VARCHAR2(100) CHECK (ItemStatus IN ('IN Stock', 'Out of Stock'))  
);

CREATE TABLE Passengers (  
    PassengerID NUMBER PRIMARY KEY,  
    Name VARCHAR2(100) NOT NULL,  
    Age NUMBER,  
    Gender VARCHAR2(10),  
    ContactNumber VARCHAR2(20),  
      
) ;

select * from Catalog;

select * from Passengers;

CREATE TABLE Passengers (  
    PassengerID NUMBER PRIMARY KEY,  
    Name VARCHAR2(100) NOT NULL,  
    Age NUMBER,  
    Gender VARCHAR2(10),  
    ContactNumber VARCHAR2(20)  
      
) ;

ALTER TABLE Passengers 
ADD CONSTRAINT FK_TrainID FOREIGN KEY (TrainID) REFERENCES Trains(TrainID);

drop table Passengers;

CREATE TABLE Passengers ( 
    PassengerID NUMBER PRIMARY KEY, 
    Name VARCHAR2(100) NOT NULL, 
    Age NUMBER, 
    Gender VARCHAR2(10), 
    ContactNumber VARCHAR2(20), 
    TrainID NUMBER REFERENCES Trains(TrainID) 
);

select * from Stalls;

INSERT INTO Passengers (PassengerID, Name, Age, Gender, ContactNumber, TrainID) 
VALUES  
(1, 'Alice', 25, 'Female', '1234567890', 1), 
(2, 'Bob', 30, 'Male', '9876543210', 2), 
(3, 'Charlie', 40, 'Male', '2345678901', 3), 
(4, 'David', 35, 'Male', '8765432109', 4), 
(5, 'Eve', 28, 'Female', '3456789012', 5), 
(6, 'Frank', 45, 'Male', '7654321098', 6), 
(7, 'Grace', 22, 'Female', '4567890123', 7), 
(8, 'Henry', 50, 'Male', '6543210987', 8), 
(9, 'Ivy', 27, 'Female', '5678901234', 9), 
(10, 'Jack', 32, 'Male', '5432109876', 10);

INSERT INTO Passengers (PassengerID, Name, Age, Gender, ContactNumber, TrainID) 
VALUES  
(1, 'Alice', 25, 'Female', '1234567890', 1), 
(2, 'Bob', 30, 'Male', '9876543210', 2), 
(3, 'Charlie', 40, 'Male', '2345678901', 3), 
(4, 'David', 35, 'Male', '8765432109', 4), 
(5, 'Eve', 28, 'Female', '3456789012', 5), 
(6, 'Frank', 45, 'Male', '7654321098', 6), 
(7, 'Grace', 22, 'Female', '4567890123', 7), 
(8, 'Henry', 50, 'Male', '6543210987', 8), 
(9, 'Ivy', 27, 'Female', '5678901234', 9), 
(10, 'Jack', 32, 'Male', '5432109876', 10);

INSERT INTO Passengers (PassengerID, Name, Age, Gender, ContactNumber, TrainID) 
VALUES  
(1, 'Alice', 25, 'Female', '1234567890', 1), 
(2, 'Bob', 30, 'Male', '9876543210', 2), 
(3, 'Charlie', 40, 'Male', '2345678901', 3), 
(4, 'David', 35, 'Male', '8765432109', 4), 
(5, 'Eve', 28, 'Female', '3456789012', 5), 
(6, 'Frank', 45, 'Male', '7654321098', 6), 
(7, 'Grace', 22, 'Female', '4567890123', 7), 
(8, 'Henry', 50, 'Male', '6543210987', 8), 
(9, 'Ivy', 27, 'Female', '5678901234', 9), 
(10, 'Jack', 32, 'Male', '5432109876', 10);

INSERT INTO Catalog (ItemID, StallID, ItemName, ItemType, Price, ItemStatus) 
VALUES  
(1, 1, 'Burger', 'Food', 5.99, 'IN Stock'), 
(2, 2, 'T-Shirt', 'Clothing', 19.99, 'IN Stock'), 
(3, 3, 'Smartphone', 'Electronics', 499.99, 'Out of Stock'), 
(4, 4, 'Novel', 'Books', 9.99, 'IN Stock'), 
(5, 5, 'Necklace', 'Jewelry', 99.99, 'Out of Stock'), 
(6, 6, 'Action Figure', 'Toys', 14.99, 'IN Stock'), 
(7, 7, 'Notebook', 'Stationery', 2.99, 'IN Stock'), 
(8, 8, 'Vase', 'Home Decor', 29.99, 'Out of Stock'), 
(9, 9, 'Football', 'Sports', 24.99, 'IN Stock'), 
(10, 10, 'Shampoo', 'Health and Beauty', 8.99, 'IN Stock');

INSERT INTO Catalog (ItemID, StallID, ItemName, ItemType, Price, ItemStatus) 
VALUES  
(1, 1, 'Burger', 'Food', 5.99, 'IN Stock');

INSERT INTO Passengers (PassengerID, Name, Age, Gender, ContactNumber, TrainID) 
VALUES  
(1, 'Alice', 25, 'Female', '1234567890', 1);

INSERT INTO Passengers (PassengerID, Name, Age, Gender, ContactNumber, TrainID) 
VALUES  
 
(2, 'Bob', 30, 'Male', '9876543210', 2);

(3, 'Charlie', 40, 'Male', '2345678901', 3);

(4, 'David', 35, 'Male', '8765432109', 4);

(5, 'Eve', 28, 'Female', '3456789012', 5);

(6, 'Frank', 45, 'Male', '7654321098', 6);

(7, 'Grace', 22, 'Female', '4567890123', 7);

(8, 'Henry', 50, 'Male', '6543210987', 8);

(9, 'Ivy', 27, 'Female', '5678901234', 9);

(10, 'Jack', 32, 'Male', '5432109876', 10);

INSERT INTO Passengers (PassengerID, Name, Age, Gender, ContactNumber, TrainID) 
VALUES  
 
(2, 'Bob', 30, 'Male', '9876543210', 2);

select * from Passengers;

INSERT INTO Passengers (PassengerID, Name, Age, Gender, ContactNumber, TrainID) 
VALUES  
 
 
(3, 'Charlie', 40, 'Male', '2345678901', 3);

INSERT INTO Passengers (PassengerID, Name, Age, Gender, ContactNumber, TrainID) 
VALUES  
 
 
 
(4, 'David', 35, 'Male', '8765432109', 4);

INSERT INTO Passengers (PassengerID, Name, Age, Gender, ContactNumber, TrainID) 
VALUES  
 
 
 
 
(5, 'Eve', 28, 'Female', '3456789012', 5);

INSERT INTO Passengers (PassengerID, Name, Age, Gender, ContactNumber, TrainID) 
VALUES  
 
 
 
 
(6, 'Frank', 45, 'Male', '7654321098', 6);

select * from Passengers;

INSERT INTO Stalls (StallID, StallName, StallType, Location, ContactNumber, OwnerName, StallStatus) VALUES (1, 'Food Stall 1', 'Food', 1, '123-456-7890', 'John Doe', 'Open');

INSERT INTO Stalls (StallID, StallName, StallType, Location, ContactNumber, OwnerName, StallStatus) VALUES (2, 'Clothing Stall 1', 'Clothing', 2, '234-567-8901', 'Jane Smith', 'Open');

INSERT INTO Stalls (StallID, StallName, StallType, Location, ContactNumber, OwnerName, StallStatus) VALUES (3, 'Electronics Stall 1', 'Electronics', 1, '345-678-9012', 'Michael Johnson', 'Closed');

INSERT INTO Stalls (StallID, StallName, StallType, Location, ContactNumber, OwnerName, StallStatus) VALUES (4, 'Book Stall 1', 'Books', 2, '456-789-0123', 'Emily Williams', 'Open');

INSERT INTO Stalls (StallID, StallName, StallType, Location, ContactNumber, OwnerName, StallStatus) VALUES (5, 'Jewelry Stall 1', 'Jewelry', 1, '567-890-1234', 'Christopher Brown', 'Closed');

INSERT INTO Stalls (StallID, StallName, StallType, Location, ContactNumber, OwnerName, StallStatus) VALUES (6, 'Toy Stall 1', 'Toys', 2, '678-901-2345', 'Amanda Miller', 'Open');

INSERT INTO Stalls (StallID, StallName, StallType, Location, ContactNumber, OwnerName, StallStatus) VALUES (7, 'Stationery Stall 1', 'Stationery', 1, '789-012-3456', 'Daniel Taylor', 'Closed');

INSERT INTO Stalls (StallID, StallName, StallType, Location, ContactNumber, OwnerName, StallStatus) VALUES (8, 'Home Decor Stall 1', 'Home Decor', 2, '890-123-4567', 'Olivia Martinez', 'Open');

INSERT INTO Stalls (StallID, StallName, StallType, Location, ContactNumber, OwnerName, StallStatus) VALUES (9, 'Sports Stall 1', 'Sports', 1, '901-234-5678', 'Sophia Anderson', 'Closed');

INSERT INTO Stalls (StallID, StallName, StallType, Location, ContactNumber, OwnerName, StallStatus) VALUES (10, 'Health and Beauty Stall 1', 'Health and Beauty', 2, '012-345-6789', 'William Garcia', 'Open');

select * from Stalls;

INSERT INTO Catalog (ItemID, StallID, ItemName, ItemType, Price, ItemStatus) VALUES (1, 1, 'Burger', 'Food', 5.99, 'IN Stock');

INSERT INTO Catalog (ItemID, StallID, ItemName, ItemType, Price, ItemStatus) VALUES (2, 2, 'T-Shirt', 'Clothing', 19.99, 'IN Stock');

INSERT INTO Catalog (ItemID, StallID, ItemName, ItemType, Price, ItemStatus) VALUES (3, 3, 'Smartphone', 'Electronics', 499.99, 'Out of Stock');

INSERT INTO Catalog (ItemID, StallID, ItemName, ItemType, Price, ItemStatus) VALUES (4, 4, 'Novel', 'Books', 9.99, 'IN Stock');

INSERT INTO Catalog (ItemID, StallID, ItemName, ItemType, Price, ItemStatus) VALUES (5, 5, 'Necklace', 'Jewelry', 99.99, 'Out of Stock');

INSERT INTO Catalog (ItemID, StallID, ItemName, ItemType, Price, ItemStatus) VALUES (6, 6, 'Action Figure', 'Toys', 14.99, 'IN Stock');

INSERT INTO Catalog (ItemID, StallID, ItemName, ItemType, Price, ItemStatus) VALUES (7, 7, 'Notebook', 'Stationery', 2.99, 'IN Stock');

INSERT INTO Catalog (ItemID, StallID, ItemName, ItemType, Price, ItemStatus) VALUES (8, 8, 'Vase', 'Home Decor', 29.99, 'Out of Stock');

INSERT INTO Catalog (ItemID, StallID, ItemName, ItemType, Price, ItemStatus) VALUES (9, 9, 'Football', 'Sports', 24.99, 'IN Stock');

INSERT INTO Catalog (ItemID, StallID, ItemName, ItemType, Price, ItemStatus) VALUES (10, 10, 'Shampoo', 'Health and Beauty', 8.99, 'IN Stock');

select * from Catalog;

CREATE OR REPLACE PROCEDURE UpdateStallStatus ( 
    p_StallID IN NUMBER, 
    p_NewStatus IN VARCHAR2 
) 
IS 
BEGIN 
    UPDATE Stalls 
    SET StallStatus = p_NewStatus 
    WHERE StallID = p_StallID; 
    COMMIT; 

/

CREATE OR REPLACE PROCEDURE UpdateStallStatus ( 
    p_StallID IN NUMBER, 
    p_NewStatus IN VARCHAR2 
) 
IS 
BEGIN 
    UPDATE Stalls 
    SET StallStatus = p_NewStatus 
    WHERE StallID = p_StallID; 
    COMMIT; 
END;
/

call UpdatestallStatus


call UpdateStallStatus


EXEC UpdateStallStatus(1, 'Closed')


CREATE OR REPLACE PROCEDURE UpdateStallStatus ( 
    p_StallID IN NUMBER, 
    p_NewStatus IN VARCHAR2 
) 
IS 
BEGIN 
    UPDATE Stalls 
    SET StallStatus = p_NewStatus 
    WHERE StallID = p_StallID; 
    COMMIT; 
END;
/

DECLARE 
    v_StallStatus Stalls.StallStatus%TYPE; 
BEGIN 
    UpdateStallStatus(1, 'Closed'); -- Assuming you want to update StallID 1 to 'Closed' 
 
    -- Retrieve the updated StallStatus for StallID 1 
    SELECT StallStatus INTO v_StallStatus FROM Stalls WHERE StallID = 1; 
 
    -- Display the updated StallStatus 
    DBMS_OUTPUT.PUT_LINE('Stall Status after update: ' || v_StallStatus); 
END;
/

CREATE OR REPLACE PROCEDURE GetPassengerDetails 
IS 
    CURSOR c_PassengerDetails IS 
        SELECT PassengerID, Name, Age, Gender, ContactNumber 
        FROM Passengers; 
 
    v_PassengerID Passengers.PassengerID%TYPE; 
    v_Name Passengers.Name%TYPE; 
    v_Age Passengers.Age%TYPE; 
    v_Gender Passengers.Gender%TYPE; 
    v_ContactNumber Passengers.ContactNumber%TYPE; 
BEGIN 
    OPEN c_PassengerDetails; 
    LOOP 
        FETCH c_PassengerDetails INTO v_PassengerID, v_Name, v_Age, v_Gender, v_ContactNumber; 
        EXIT WHEN c_PassengerDetails%NOTFOUND; 
        -- Process the retrieved data here 
        DBMS_OUTPUT.PUT_LINE('Passenger ID: ' || v_PassengerID || ', Name: ' || v_Name || ', Age: ' || v_Age || ', Gender: ' || v_Gender || ', Contact Number: ' || v_ContactNumber); 
    END LOOP; 
    CLOSE c_PassengerDetails; 
END GetPassengerDetails; 
/

SET SERVEROUTPUT ON; -- Enable DBMS output 


BEGIN 
    GetPassengerDetails; 
END;
/

SQL> @get_passenger_details.sql


CREATE OR REPLACE PROCEDURE GetPassengerDetails 
IS 
    CURSOR c_PassengerDetails IS 
        SELECT PassengerID, Name, Age, Gender, ContactNumber 
        FROM Passengers; 
 
    v_PassengerID Passengers.PassengerID%TYPE; 
    v_Name Passengers.Name%TYPE; 
    v_Age Passengers.Age%TYPE; 
    v_Gender Passengers.Gender%TYPE; 
    v_ContactNumber Passengers.ContactNumber%TYPE; 
BEGIN 
    OPEN c_PassengerDetails; 
    LOOP 
        FETCH c_PassengerDetails INTO v_PassengerID, v_Name, v_Age, v_Gender, v_ContactNumber; 
        EXIT WHEN c_PassengerDetails%NOTFOUND; 
       
        DBMS_OUTPUT.PUT_LINE('Passenger ID: ' || v_PassengerID || ', Name: ' || v_Name || ', Age: ' || v_Age || ', Gender: ' || v_Gender || ', Contact Number: ' || v_ContactNumber); 
    END LOOP; 
    CLOSE c_PassengerDetails; 
END; 
/

SET SERVEROUTPUT ON; -- Enable DBMS output 


BEGIN 
    GetPassengerDetails; 
END; 
/

CREATE OR REPLACE FUNCTION CalculateTotalPrice ( 
    p_ItemID IN NUMBER, 
    p_Quantity IN NUMBER 
) RETURN NUMBER 
IS 
    v_ItemPrice NUMBER; 
    v_TotalPrice NUMBER; 
BEGIN 
    -- Fetch the price of the item 
    SELECT Price INTO v_ItemPrice 
    FROM Catalog 
    WHERE ItemID = p_ItemID; 
 
    -- Calculate total price 
    v_TotalPrice := v_ItemPrice * p_Quantity; 
 
    -- Return total price 
    RETURN v_TotalPrice; 
END; 
/

SELECT CalculateTotalPrice(1, 3) AS TotalPrice FROM dual;

DECLARE 
    v_TotalPrice NUMBER; 
BEGIN 
    v_TotalPrice := CalculateTotalPrice(1, 3); 
    DBMS_OUTPUT.PUT_LINE('Total Price: ' || v_TotalPrice); 
END; 
/

CREATE OR REPLACE FUNCTION IsItemInStock ( 
    p_ItemID IN NUMBER 
) 
RETURN BOOLEAN 
IS 
    v_ItemStatus VARCHAR2(100); 
BEGIN 
    -- Retrieve item status 
    SELECT ItemStatus INTO v_ItemStatus 
    FROM Catalog 
    WHERE ItemID = p_ItemID; 
 
    -- Check if item is in stock 
    IF v_ItemStatus = 'IN Stock' THEN 
        RETURN TRUE; 
    ELSE 
        RETURN FALSE; 
    END IF; 
 
EXCEPTION 
    WHEN TOO_MANY_ROWS THEN 
        DBMS_OUTPUT.PUT_LINE('Error: Multiple rows found for the provided ItemID.'); 
        RETURN FALSE; 
    WHEN NO_DATA_FOUND THEN 
        DBMS_OUTPUT.PUT_LINE('Error: No data found for the provided ItemID.'); 
        RETURN FALSE; 
    WHEN OTHERS THEN 
        DBMS_OUTPUT.PUT_LINE('Error: An unexpected error occurred.'); 
        RETURN FALSE; 
END IsItemInStock; 

/

SET SERVEROUTPUT ON; -- Enable output display 


DECLARE 
    v_IsInStock BOOLEAN; 
BEGIN 
    -- Call the function and store the result 
    v_IsInStock := IsItemInStock(1); -- Assuming you want to check ItemID 1 
 
    -- Print the result 
    IF v_IsInStock THEN 
        DBMS_OUTPUT.PUT_LINE('Item is in stock.'); 
    ELSE 
        DBMS_OUTPUT.PUT_LINE('Item is out of stock.'); 
    END IF; 
END; 
/

CREATE OR REPLACE FUNCTION GetStallAndCatalogData ( 
    p_StallID IN NUMBER 
) 
RETURN SYS_REFCURSOR 
IS 
    v_ResultCursor SYS_REFCURSOR; 
BEGIN 
    OPEN v_ResultCursor FOR 
        SELECT S.StallID, S.StallName, S.StallType, C.ItemID, C.ItemName, C.ItemType, C.Price 
        FROM Stalls S 
        INNER JOIN Catalog C ON S.StallID = C.StallID 
        WHERE S.StallID = p_StallID; 
 
    RETURN v_ResultCursor; 
END GetStallAndCatalogData; 
/

DECLARE 
    v_StallID NUMBER := 1;  
    v_ResultCursor SYS_REFCURSOR; 
    v_StallID_result NUMBER; 
    v_StallName_result VARCHAR2(100); 
    v_StallType_result VARCHAR2(50); 
    v_ItemID_result NUMBER; 
    v_ItemName_result VARCHAR2(100); 
    v_ItemType_result VARCHAR2(50); 
    v_Price_result NUMBER; 
BEGIN 
    -- 
    v_ResultCursor := GetStallAndCatalogData(v_StallID); 
 
 
    LOOP 
        FETCH v_ResultCursor INTO v_StallID_result, v_StallName_result, v_StallType_result, v_ItemID_result, v_ItemName_result, v_ItemType_result, v_Price_result; 
        EXIT WHEN v_ResultCursor%NOTFOUND; 
 
 
        DBMS_OUTPUT.PUT_LINE('Stall ID: ' || v_StallID_result || ', Stall Name: ' || v_StallName_result || ', Stall Type: ' || v_StallType_result || 
                             ', Item ID: ' || v_ItemID_result || ', Item Name: ' || v_ItemName_result || ', Item Type: ' || v_ItemType_result || 
                             ', Price: ' || v_Price_result); 
    END LOOP; 
 
    
    CLOSE v_ResultCursor; 
END; 
/

DECLARE 
    v_IsInStock BOOLEAN; 
BEGIN 
  
    v_IsInStock := IsItemInStock(1);  
 
    IF v_IsInStock THEN 
        DBMS_OUTPUT.PUT_LINE('Item is in stock.'); 
    ELSE 
        DBMS_OUTPUT.PUT_LINE('Item is out of stock.'); 
    END IF; 
END; 

/

CREATE OR REPLACE TRIGGER PreventStallOverbooking 
BEFORE INSERT OR UPDATE ON StallBookings 
FOR EACH ROW 
DECLARE 
    v_StallCapacity NUMBER; 
    v_BookedQuantity NUMBER; 
BEGIN 
    -- Retrieve the capacity of the stall 
    SELECT Capacity INTO v_StallCapacity 
    FROM Stalls 
    WHERE StallID = :NEW.StallID; 
 
    -- Retrieve the total quantity already booked for the stall 
    SELECT NVL(SUM(Quantity), 0) INTO v_BookedQuantity 
    FROM StallBookings 
    WHERE StallID = :NEW.StallID; 
 
    -- Calculate the total quantity after the update 
    IF INSERTING THEN 
        v_BookedQuantity := v_BookedQuantity + :NEW.Quantity; 
    ELSIF UPDATING THEN 
        v_BookedQuantity := v_BookedQuantity - :OLD.Quantity + :NEW.Quantity; 
    END IF; 
 
    -- Check if the total booked quantity exceeds the stall capacity 
    IF v_BookedQuantity > v_StallCapacity THEN 
        RAISE_APPLICATION_ERROR(-20001, 'Stall cannot be overbooked. Stall capacity exceeded.'); 
    END IF; 
END; 

/

CREATE OR REPLACE TRIGGER PreventStallOverbooking 
BEFORE INSERT OR UPDATE ON StallBookings 
FOR EACH ROW 
DECLARE 
    v_StallCapacity NUMBER; 
    v_BookedQuantity NUMBER; 
BEGIN 
    -- Retrieve the capacity of the stall 
    SELECT Capacity INTO v_StallCapacity 
    FROM Stalls 
    WHERE StallID = :NEW.StallID; 
 
    -- Retrieve the total quantity already booked for the stall 
    SELECT NVL(SUM(Quantity), 0) INTO v_BookedQuantity 
    FROM StallBookings 
    WHERE StallID = :NEW.StallID; 
 
    -- Calculate the total quantity after the update 
    IF INSERTING THEN 
        v_BookedQuantity := v_BookedQuantity + :NEW.Quantity; 
    ELSIF UPDATING THEN 
        v_BookedQuantity := v_BookedQuantity - :OLD.Quantity + :NEW.Quantity; 
    END IF; 
 
    -- Check if the total booked quantity exceeds the stall capacity 
    IF v_BookedQuantity > v_StallCapacity THEN 
        RAISE_APPLICATION_ERROR(-20001, 'Stall cannot be overbooked. Stall capacity exceeded.'); 
    END IF; 
END; 
/

CREATE OR REPLACE TRIGGER UpdateTrainScheduleOnPlatformChange 
AFTER UPDATE OF PlatformID ON Trains 
FOR EACH ROW 
BEGIN 
    -- Update the arrival and departure platforms of the train 
    UPDATE Trains 
    SET ArrivalPlatform = :NEW.PlatformID, 
        DeparturePlatform = :NEW.PlatformID 
    WHERE TrainID = :NEW.TrainID; 
END; 
/

CREATE OR REPLACE TRIGGER UpdateStallStatusTrigger 
AFTER INSERT OR UPDATE ON Stalls 
FOR EACH ROW 
BEGIN 
    IF :NEW.StallStatus = 'Closed' THEN 
        -- Perform actions when a stall is closed 
        NULL; -- Placeholder for actions to be taken 
    END IF; 
    -- Add more conditions or actions as needed 
END; 
/

CREATE OR REPLACE TRIGGER CheckItemAvailabilityTrigger 
BEFORE INSERT OR UPDATE ON Catalog 
FOR EACH ROW 
BEGIN 
    IF :NEW.ItemStatus = 'Out of Stock' THEN 
        -- Perform actions when an item is out of stock 
        NULL; -- Placeholder for actions to be taken 
    END IF; 
    -- Add more conditions or actions as needed 
END;
/

REATE OR REPLACE TRIGGER CheckStallLimitPerPlatform 


BEFORE INSERT OR UPDATE ON Stalls 


FOR EACH ROW 


DECLARE 
    v_StallCount NUMBER; 
BEGIN 
    -- Count the number of stalls for the new or updated platform 
    SELECT COUNT(*) INTO v_StallCount 
    FROM Stalls 
    WHERE PlatformID = :NEW.PlatformID; 
 
    -- Check if the number of stalls exceeds the limit (10) 
    IF v_StallCount >= 10 THEN 
        RAISE_APPLICATION_ERROR(-20001, 'Cannot add more than 10 stalls to one platform.'); 
    END IF; 
END; 

/

CREATE OR REPLACE TRIGGER CheckStallLimitPerPlatform 
BEFORE INSERT OR UPDATE ON Stalls 
FOR EACH ROW 
DECLARE 
    v_StallCount NUMBER; 
BEGIN 
    -- Count the number of stalls for the new or updated platform 
    SELECT COUNT(*) INTO v_StallCount 
    FROM Stalls 
    WHERE PlatformID = :NEW.PlatformID; 
 
    -- Check if the number of stalls exceeds the limit (10) 
    IF v_StallCount >= 10 THEN 
        RAISE_APPLICATION_ERROR(-20001, 'Cannot add more than 10 stalls to one platform.'); 
    END IF; 
END; 
 

/

CREATE OR REPLACE TRIGGER CheckStallLimitPerPlatform 
BEFORE INSERT OR UPDATE ON Stalls 
FOR EACH ROW 
DECLARE 
    v_StallCount NUMBER; 
BEGIN 
    -- Count the number of stalls for the new or updated platform 
    SELECT COUNT(*) INTO v_StallCount 
    FROM Stalls 
    WHERE PlatformID = :NEW.PlatformID; 
 
    -- Check if the number of stalls exceeds the limit (10) 
    IF v_StallCount >= 10 THEN 
        RAISE_APPLICATION_ERROR(-20001, 'Cannot add more than 10 stalls to one platform.'); 
    END IF; 
END; 
/

CREATE OR REPLACE TRIGGER CheckStallLimitPerPlatform 
BEFORE INSERT OR UPDATE ON Stalls 
FOR EACH ROW 
DECLARE 
    v_StallCount NUMBER; 
BEGIN 
    -- Count the number of stalls for the new or updated platform 
    SELECT COUNT(*) INTO v_StallCount 
    FROM Stalls 
    WHERE Location = :NEW.Location; 
 
    -- Check if the number of stalls exceeds the limit (10) 
    IF v_StallCount >= 10 THEN 
        RAISE_APPLICATION_ERROR(-20001, 'Cannot add more than 10 stalls to one platform.'); 
    END IF; 
END; 
/

UPDATE Stalls 
SET StallName = 'Updated Stall Name' 
WHERE StallID = 1;

INSERT INTO Stalls (StallID, StallName, StallType, Location, ContactNumber, OwnerName, StallStatus) 
VALUES (1, 'Food Stall 1', 'Food', 1, '123-456-7890', 'John Doe', 'Open');

INSERT INTO Stalls (StallID, StallName, StallType, Location, ContactNumber, OwnerName, StallStatus) 
VALUES (12, 'Food Stall 1', 'Food', 1, '123-456-7890', 'John Doe', 'Open');

select * from Stalls;

INSERT INTO Stalls (StallID, StallName, StallType, Location, ContactNumber, OwnerName, StallStatus) 
VALUES (122, 'Food Stall 1', 'Food', 1, '123-456-7890', 'John Doe', 'Open');

INSERT INTO Stalls (StallID, StallName, StallType, Location, ContactNumber, OwnerName, StallStatus) 
VALUES (11, 'Food Stall 1', 'Food', 1, '123-456-7890', 'John Doe', 'Open');

INSERT INTO Stalls (StallID, StallName, StallType, Location, ContactNumber, OwnerName, StallStatus) 
VALUES (121, 'Food Stall 1', 'Food', 1, '123-456-7890', 'John Doe', 'Open');

INSERT INTO Stalls (StallID, StallName, StallType, Location, ContactNumber, OwnerName, StallStatus) 
VALUES (2902, 'Food Stall 1', 'Food', 1, '123-456-7890', 'John Doe', 'Open');

INSERT INTO Stalls (StallID, StallName, StallType, Location, ContactNumber, OwnerName, StallStatus) 
VALUES (122, 'Food Stall 1', 'Food', 1, '123-456-7890', 'John Doe', 'Open');

INSERT INTO Stalls (StallID, StallName, StallType, Location, ContactNumber, OwnerName, StallStatus) 
VALUES (222, 'Food Stall 1', 'Food', 1, '123-456-7890', 'John Doe', 'Open');

INSERT INTO Stalls (StallID, StallName, StallType, Location, ContactNumber, OwnerName, StallStatus) 
VALUES (2902, 'Food Stall 1', 'Food', 1, '123-456-7890', 'John Doe', 'Open');

CREATE OR REPLACE TRIGGER PreventClosedStallsWithBookings 
BEFORE UPDATE ON Stalls 
FOR EACH ROW 
DECLARE 
    v_BookingCount NUMBER; 
BEGIN 
    -- Count the number of active bookings for the stall 
    SELECT COUNT(*) INTO v_BookingCount 
    FROM StallBookings 
    WHERE StallID = :NEW.StallID 
      AND BookingStatus = 'Active'; 
 
    -- Check if there are active bookings for the stall being updated 
    IF :NEW.StallStatus = 'Closed' AND v_BookingCount > 0 THEN 
        RAISE_APPLICATION_ERROR(-20001, 'Cannot close stall with active bookings.'); 
    END IF; 
END;
/

CREATE OR REPLACE TRIGGER PreventClosedStallsWithBookings 
BEFORE UPDATE ON Stalls 
FOR EACH ROW 
DECLARE 
    v_BookingCount NUMBER; 
BEGIN 
    -- Count the number of active bookings for the stall 
    SELECT COUNT(*) INTO v_BookingCount 
    FROM Bookings 
    WHERE StallID = :NEW.StallID 
      AND BookingStatus = 'Active'; 
 
    -- Check if there are active bookings for the stall being updated 
    IF :NEW.StallStatus = 'Closed' AND v_BookingCount > 0 THEN 
        RAISE_APPLICATION_ERROR(-20001, 'Cannot close stall with active bookings.'); 
    END IF; 
END; 
/

CREATE OR REPLACE TRIGGER PreventClosedStallsWithBookings 
BEFORE UPDATE ON Stalls 
FOR EACH ROW 
DECLARE 
    v_RecentPurchaseCount NUMBER; 
BEGIN 
    -- Count the number of recent purchases for items from the stall 
    SELECT COUNT(*) INTO v_RecentPurchaseCount 
    FROM Catalog 
    WHERE StallID = :NEW.StallID 
      AND PURCHASE_DATE >= SYSDATE - 30; -- Assuming "PURCHASE_DATE" is a column indicating when the item was purchased 
 
    -- Check if there are recent purchases for the stall being updated 
    IF :NEW.StallStatus = 'Closed' AND v_RecentPurchaseCount > 0 THEN 
        RAISE_APPLICATION_ERROR(-20001, 'Cannot close stall with recent purchases.'); 
    END IF; 
END; 
/

CREATE OR REPLACE TRIGGER PreventClosedStallsWithBookings 
BEFORE UPDATE ON Stalls 
FOR EACH ROW 
DECLARE 
    v_RecentPurchaseCount NUMBER; 
BEGIN 
    -- Count the number of recent purchases for items from the stall 
    SELECT COUNT(*) INTO v_RecentPurchaseCount 
    FROM Catalog 
    WHERE StallID = :NEW.StallID 
      AND PURCHASE_DATE >= SYSDATE - 30; -- Assuming "PURCHASE_DATE" is a column indicating when the item was purchased 
 
    -- Check if there are recent purchases for the stall being updated 
    IF :NEW.StallStatus = 'Closed' AND v_RecentPurchaseCount > 0 THEN 
        RAISE_APPLICATION_ERROR(-20001, 'Cannot close stall with recent purchases.'); 
    END IF; 
END; 
/

CREATE OR REPLACE TRIGGER PreventClosedStallsWithBookings 
BEFORE UPDATE ON Stalls 
FOR EACH ROW 
DECLARE 
    v_RecentPurchaseCount NUMBER; 
BEGIN 
    -- Count the number of recent purchases for items from the stall 
    SELECT COUNT(*) INTO v_RecentPurchaseCount 
    FROM Catalog 
    WHERE StallID = :NEW.StallID; -- Assuming "PURCHASE_DATE" is a column indicating when the item was purchased 
 
    -- Check if there are recent purchases for the stall being updated 
    IF :NEW.StallStatus = 'Closed' AND v_RecentPurchaseCount > 0 THEN 
        RAISE_APPLICATION_ERROR(-20001, 'Cannot close stall with recent purchases.'); 
    END IF; 
END; 
/

