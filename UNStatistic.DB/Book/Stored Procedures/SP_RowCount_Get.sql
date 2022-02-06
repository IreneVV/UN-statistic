CREATE   PROCEDURE Book.[SP_RowCount_Get]
(
    @schemaname AS NVARCHAR(255)
)
AS

BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        BEGIN TRANSACTION;
            DECLARE @SQLString AS NVARCHAR(4000);

            SET @SQLString =

                    N'(SELECT S.[Name] + T.[Name] AS SchemaTable,
                              ISNULL(I.[Rows], 0) AS [Rows]
                       FROM sys.tables AS T
                       INNER JOIN sys.schemas AS S
                                ON T.Schema_id=S.Schema_id
                       LEFT JOIN sysindexes AS I
                                ON I.Id = T.Object_id and I.Indid =1
                       WHERE S.[Name]=@Schemaname OR @Schemaname IS NULL)'

            EXEC sp_executesql
                      @statement = @SQLString
                    , @params = N'@schemaname NVARCHAR(255)'
                    , @schemaname = @schemaname;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH

        DECLARE @ErrorMessage NVARCHAR(4000),
                @ErrorSeverity INT,
                @ErrorState INT;

        SET @ErrorMessage = ERROR_MESSAGE();
        SET @ErrorSeverity = ERROR_SEVERITY();
        SET @ErrorState = ERROR_STATE();

        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);

        IF @@TRANCOUNT > 0
            BEGIN
                ROLLBACK TRANSACTION;
            END

    END CATCH
END;