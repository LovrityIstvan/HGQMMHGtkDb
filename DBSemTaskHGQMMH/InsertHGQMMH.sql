INSERT INTO Tanulo (Neptunkod, TelSzam, SzulDatum, Nev) VALUES
('QWERTZ', '06707896321', '2001-05-15', 'Kovács István'),
('ASDFGH', '06703214789', '2002-07-21', 'Nagy Beáta'),
('FGH4J5', '06305828796', '2000-12-03', 'Szabó Bence'),
('RFV5BH', '06204569831', '1999-03-11', 'Tóth Ottó'),
('MNO5L6', '06704719673', '1998-08-29', 'Fekete Viktor'),
('PQRPO9', '06304379842', '2003-10-14', 'Varga Attila');

INSERT INTO Kepzes (KepzesID, MentorID, Kar, KepzesNev) VALUES
('GEIK1', 'M4', 'GEIK', 'Informatika'),
('GTK1', 'M1', 'GTK', 'Adatelemzes'),
('BTK1', 'M6', 'BTK', 'Gyogypedagogia'),
('GTK2', 'M2', 'GTK', 'Szamvitel'),
('GEIK2', 'M3', 'GEIK', 'Villamosmernok'),
('ETK1', 'M5', 'ETK', 'Gyogytestneveles');

INSERT INTO Jelentkezes (BeirDatum, KepzesID, TanuloID, Evfolyam) VALUES
('2023-09-10', 'GEIK1', 'MNO5L6', 2023),
('2022-08-15', 'ETK1', 'QWERTZ', 2022),
('2024-09-05', 'GTK1', 'RFV5BH', 2024),
('2022-09-08', 'ETK1', 'ASDFGH', 2022),
('2017-08-29', 'ETK1', 'PQRPO9', 2017),
('2023-09-01', 'GEIK2', 'FGH4J5', 2023);

INSERT INTO Tantargy (TargyID, Jegyzo, TargyNev, LezarasMod) VALUES
('T1', 'Kiss Anita', 'Matematika', 'Kollokvium'),
('T2', 'Nagy Árpád', 'Fizika', 'Gyakorlat'),
('T3', 'Szabó Teréz', 'Biológia', 'Gyakorlat'),
('T4', 'Fekete István', 'Kémia', 'Kollokvium'),
('T5', 'Pető Vilmos', 'Informatika', 'Gyakorlat'),
('T6', 'Magyar Gyula', 'Gépészet', 'Kollokvium');

INSERT INTO Utemterv (Felev, Kredit, KepzesID, TargyID) VALUES
(1, 4, 'GEIK1', 'T5'),
(2, 5, 'GTK1', 'T1'),
(3, 4, 'ETK1', 'T3'),
(4, 3, 'GTK2', 'T1'),
(5, 5, 'GTK2', 'T5'),
(6, 2, 'BTK1', 'T3');

INSERT INTO Oktato (Neptunkod, SzulDatum, Nev, Lakcim, Irszam, Utca, Varos) VALUES
('QUKRTH', '1980-01-12', 'Kiss János', '1011 Budapest Alkotás u. 11', 1011, 'Alkotás u.', 'Budapest'),
('LFTHGQ', '1975-03-22', 'Nagy Éva', '4025 Debrecen Hunyadi u. 12', 4025, 'Hunyadi u.', 'Debrecen'),
('PLAQ3D', '1985-09-18', 'Szabó Péter', '6000 Kecskemét Petőfi tér 2', 6000, 'Petőfi tér', 'Kecskemét'),
('SLJ3V2', '1978-07-09', 'Tóth Erika', '7621 Pécs Diófa u. 23', 7621, 'Diófa u.', 'Pécs'),
('QWLLJ1', '1982-12-30', 'Varga Attila', '9400 Sopron Kossuth Lajos u. 10', 9400, 'Kossuth Lajos u.', 'Sopron'),
('QQMJH3', '1990-05-16', 'Fekete Eszter', '8000 Székesfehérvár Bartók Béla u. 30', 8000, 'Bartók Béla u.', 'Székesfehérvár');

INSERT INTO Kurzus (OktatoID, TargyID, KurzusID, Felev) VALUES
('QUKRTH', 'T1', 'K1', 1),
('QQMJH3', 'T3', 'K2', 2),
('SLJ3V2', 'T3', 'K3', 3),
('LFTHGQ', 'T6', 'K4', 4),
('SLJ3V2', 'T1', 'K5', 5),
('QQMJH3', 'T5', 'K6', 6);

INSERT INTO Mentor (Neptunkod, KepzesID, Nev, SzulDatum) VALUES
('M1', 'GTK1', 'Kovács Lajos', '1973-02-15'),
('M2', 'GTK2', 'Nagy Tímea', '1980-06-22'),
('M3', 'GEIK2', 'Szabó Gábor', '1985-11-03'),
('M4', 'GEIK1', 'Tóth Zsuzsanna', '1977-01-14'),
('M5', 'ETK1', 'Fekete István', '1968-08-30'),
('M6', 'BTK1', 'Varga Klára', '1990-09-05');

ALTER TABLE Jelentkezes
ADD FOREIGN KEY (kepzesid) REFERENCES Kepzes(kepzesid);

ALTER TABLE Jelentkezes
ADD FOREIGN KEY (tanuloid) REFERENCES Tanulo(neptunkod);

ALTER TABLE Utemterv
ADD FOREIGN KEY (kepzesid) REFERENCES Kepzes(kepzesid);

ALTER TABLE Utemterv
ADD FOREIGN KEY (targyid) REFERENCES Tantargy(targyid);

ALTER TABLE Kurzus
ADD FOREIGN KEY (oktatoid) REFERENCES Oktato(neptunkod);

ALTER TABLE Kurzus
ADD FOREIGN KEY (targyid) REFERENCES Tantargy(targyid);

ALTER TABLE Kepzes
ADD FOREIGN KEY (mentorid) REFERENCES Mentor(neptunkod);

ALTER TABLE Mentor
ADD FOREIGN KEY (kepzesid) REFERENCES Kepzes(kepzesid);