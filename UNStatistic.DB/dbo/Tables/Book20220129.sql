CREATE TABLE [dbo].[Book20220129] (
    [BookID]    INT           IDENTITY (1, 1) NOT NULL,
    [BookTitle] NVARCHAR (50) NOT NULL,
    [IssueDate] DATE          NOT NULL,
    [GenreID]   INT           NOT NULL
);

