CREATE   PROCEDURE Book.SP_Genre_Create
AS

BEGIN TRY
BEGIN TRAN;

IF OBJECT_ID('Book.Genre') IS NULL

CREATE TABLE Book.Genre (
  GenreID int NOT NULL IDENTITY,
  GenreName nvarchar(50) NOT NULL,
  CONSTRAINT PK_Genre PRIMARY KEY (GenreID)
);

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
