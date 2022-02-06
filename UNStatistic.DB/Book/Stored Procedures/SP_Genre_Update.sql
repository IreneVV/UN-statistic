CREATE   PROCEDURE Book.SP_Genre_Update
@GenreID int,
@GenreName AS nvarchar(50)
AS

BEGIN TRY
BEGIN TRAN;

IF OBJECT_ID('Book.Genre') IS NOT NULL

IF EXISTS (SELECT * FROM Book.Genre WHERE GenreID = @GenreID AND GenreName <> @GenreName)

UPDATE Book.Genre
SET GenreName = @GenreName
WHERE GenreID = @GenreID;

COMMIT TRAN;
END TRY
BEGIN CATCH
 -- Error handling
 SELECT ERROR_NUMBER() AS errornumber
      , ERROR_MESSAGE() AS errormessage
	  , ERROR_LINE() AS errorline
	  , ERROR_SEVERITY() AS errorseverity
	  , ERROR_STATE() AS errorstate;
END CATCH

RETURN;
