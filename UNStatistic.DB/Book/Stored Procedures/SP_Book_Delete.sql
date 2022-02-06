CREATE   PROCEDURE Book.SP_Book_Delete
@BookTitle AS nvarchar(50)
AS

IF OBJECT_ID('Book.Book') IS NOT NULL

DELETE FROM Book.Book
WHERE BookTitle = @BookTitle;

RETURN;
