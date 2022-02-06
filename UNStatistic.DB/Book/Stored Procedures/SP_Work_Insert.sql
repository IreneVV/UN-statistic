CREATE   PROCEDURE Book.SP_Work_Insert
@WorkName nvarchar(50)
AS

IF OBJECT_ID('Book.Work') IS NOT NULL

INSERT INTO Book.Work(WorkName)
VALUES (@WorkName);

RETURN;
