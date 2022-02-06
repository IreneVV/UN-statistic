CREATE TABLE [Book].[Work] (
    [WorkID]   INT           IDENTITY (1, 1) NOT NULL,
    [WorkName] NVARCHAR (50) NULL,
    CONSTRAINT [PK_Work] PRIMARY KEY CLUSTERED ([WorkID] ASC)
);

