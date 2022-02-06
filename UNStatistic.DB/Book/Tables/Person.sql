CREATE TABLE [Book].[Person] (
    [PersonID]   INT           IDENTITY (1, 1) NOT NULL,
    [FirstName]  NVARCHAR (25) NOT NULL,
    [MiddleName] NVARCHAR (25) NULL,
    [LastName]   NVARCHAR (25) NOT NULL
);

