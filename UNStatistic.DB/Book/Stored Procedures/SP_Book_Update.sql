CREATE   PROCEDURE Book.SP_Book_Update
@BookTitle nvarchar(50),
@GenreID int
AS

IF OBJECT_ID('Book.Book') IS NOT NULL

UPDATE Book.Book
SET GenreID = @GenreID
WHERE BookTitle = @BookTitle;

RETURN;
