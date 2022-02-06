CREATE   PROCEDURE Book.SP_Person_Create
AS

IF OBJECT_ID('Book.Person') IS NULL 

CREATE TABLE Book.Person (
  PersonID int NOT NULL IDENTITY,
  FirstName nvarchar(25) NOT NULL,
  MiddleName nvarchar(25) NULL,
  LastName nvarchar(25) NOT NULL
);

RETURN;
