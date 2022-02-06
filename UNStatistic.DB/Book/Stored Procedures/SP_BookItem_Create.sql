CREATE   PROCEDURE Book.SP_BookItem_Create
AS

IF OBJECT_ID('Book.BookItem') IS NULL 

CREATE TABLE Book.BookItem (
  ItemID int NOT NULL IDENTITY,
  BookID int NOT NULL,
  [State] nvarchar(50) NULL, 
  CONSTRAINT PK_Item PRIMARY KEY (ItemID),
  CONSTRAINT FK_Item_BookID FOREIGN KEY (BookID)
      REFERENCES Book.Book (BookID)
);

RETURN;
