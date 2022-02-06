CREATE   PROCEDURE Book.SP_BookItem_Insert
@BookID int,
@State nvarchar(50)
AS

IF OBJECT_ID('Book.BookItem') IS NOT NULL

INSERT INTO Book.BookItem(BookID, State)
VALUES (@BookID, @State);

RETURN;
