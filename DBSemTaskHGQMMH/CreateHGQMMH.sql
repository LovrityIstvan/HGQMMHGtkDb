CREATE TABLE Tanulo (
  					Neptunkod varchar(10) PRIMARY KEY NOT NULL,
  					TelSzam varchar(12),
  					SzulDatum date,
  					Nev varchar(25));
CREATE TABLE Kepzes (
  					KepzesID varchar(10) PRIMARY KEY NOT NULL,
  					MentorID varchar(10),
  					Kar varchar(10),
  					KepzesNev varchar(25));
CREATE TABLE Jelentkezes (
  					BeirDatum date,
  					KepzesID varchar(10),
  					TanuloID varchar(10),
  					Evfolyam int(8));
CREATE TABLE Tantargy (
  					TargyID varchar(10) PRIMARY KEY NOT NULL,
  					Jegyzo varchar(25),
  					TargyNev varchar(25),
  					LezarasMod varchar(10));
CREATE TABLE Utemterv (
  					Felev int(8),
  					Kredit int(8),
  					KepzesID varchar(10),
  					TargyID varchar(10));
CREATE TABLE Oktato (
  					Neptunkod varchar(10) PRIMARY KEY NOT NULL,
  					SzulDatum date,
  					Nev varchar(25),
  					Lakcim varchar(50),
  					Irszam int(8),
  					Utca varchar(35),
  					Varos varchar(35));
CREATE TABLE Kurzus (
  					OktatoID varchar(10),
  					TargyID varchar(10),
  					KurzusID varchar(10),
  					Felev int(8));
CREATE TABLE Mentor (
  					Neptunkod varchar(10) PRIMARY KEY NOT NULL,
  					KepzesID varchar(10),
  					Nev varchar(30),
  					SzulDatum date);