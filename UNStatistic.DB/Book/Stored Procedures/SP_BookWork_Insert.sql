CREATE   PROCEDURE Book.SP_BookWork_Insert
@WorkID int,
@BookID int
AS

IF OBJECT_ID('Book.BookWork') IS NOT NULL

INSERT INTO Book.BookWork(WorkID, BookID)
VALUES (@WorkID, @BookID);

RETURN;
