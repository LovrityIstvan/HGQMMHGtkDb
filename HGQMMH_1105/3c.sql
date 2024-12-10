CREATE TABLE Fonok (
 fonokID int(49),
 dolgozoID INT(4));

ALTER TABLE Fonok
ADD FOREIGN KEY (dolgozoid) REFERENCES Dolgozo1(did);