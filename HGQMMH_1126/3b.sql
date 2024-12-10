CREATE TABLE Telefonszám (
 Tid int(4) PRIMARY KEY,
 Mobil varchar(10),
 Tulaj varchar(2));

ALTER TABLE Dolgozo1
ADD FOREIGN KEY (did) 
REFERENCES Telefonszám(Tid);
