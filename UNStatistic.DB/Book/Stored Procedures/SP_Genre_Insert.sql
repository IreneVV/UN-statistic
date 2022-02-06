CREATE   PROCEDURE Book.SP_Genre_Insert
@GenreName AS nvarchar(50)
AS

IF NOT EXISTS (SELECT 1 FROM Book.Genre WHERE GenreName = @GenreName)

BEGIN TRY
BEGIN TRAN;

INSERT INTO Book.Genre(GenreName)
VALUES (@GenreName);

COMMIT TRAN;
END TRY

BEGIN CATCH
 -- Error handling
 SELECT ERROR_NUMBER() AS errornumber
      , ERROR_MESSAGE() AS errormessage
	  , ERROR_LINE() AS errorline
	  , ERROR_SEVERITY() AS errorseverity
	  , ERROR_STATE() AS errorstate;

-- Transaction uncommittable
    IF (XACT_STATE()) = -1
      ROLLBACK TRANSACTION
 
-- Transaction committable
    IF (XACT_STATE()) = 1
      COMMIT TRANSACTION

END CATCH

RETURN;
