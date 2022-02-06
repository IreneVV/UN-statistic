CREATE   PROCEDURE Book.SP_Book_Insert
@BookTitle AS nvarchar(50),
@IssueDate date,
@GenreID int
AS

IF OBJECT_ID('Book.Book') IS NOT NULL

INSERT INTO Book.Book(BookTitle, IssueDate, GenreID)
VALUES (@BookTitle, @IssueDate, @GenreID);

RETURN;
