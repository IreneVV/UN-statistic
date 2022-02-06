CREATE   PROCEDURE Book.SP_BookWork_Create
AS

IF OBJECT_ID('Book.BookWork') IS NULL 

CREATE TABLE Book.BookWork (
  WorkID int NOT NULL,
  BookID int NOT NULL,
  CONSTRAINT PK_Work_Book PRIMARY KEY (WorkID, BookID),
  CONSTRAINT FK_WorkBook_WorkID FOREIGN KEY (WorkID)
      REFERENCES Book.Work (WorkID),
  CONSTRAINT FK_WorkBook_BookID FOREIGN KEY (BookID)
      REFERENCES Book.Book (BookID),
);

RETURN;
