CREATE   PROCEDURE Book.SP_Book_Create
AS

IF OBJECT_ID('Book.Book') IS NULL 

CREATE TABLE Book.Book (
  BookID int NOT NULL IDENTITY,
  BookTitle nvarchar(50) NOT NULL,
  IssueDate date NOT NULL,
  GenreID int NOT NULL,
  CONSTRAINT PK_Book PRIMARY KEY (BookID),
  CONSTRAINT FK_Book_GenreID FOREIGN KEY (GenreID)
  REFERENCES Book.Genre (GenreID)
);

RETURN;
