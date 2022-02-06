CREATE   PROCEDURE Book.DivideZero
AS

BEGIN TRY
-- Generate a divide-by-zero error  
  SELECT
    1 / 0 AS Error;
END TRY

BEGIN CATCH
    -- Execute error retrieval routine.  
    EXECUTE Book.usp_GetErrorInfo; 
END CATCH;
