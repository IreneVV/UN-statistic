CREATE TABLE [Book].[Book] (
    [BookID]    INT           IDENTITY (1, 1) NOT NULL,
    [BookTitle] NVARCHAR (50) NOT NULL,
    [IssueDate] DATE          NOT NULL,
    [GenreID]   INT           NOT NULL,
    CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED ([BookID] ASC),
    CONSTRAINT [FK_Book_GenreID] FOREIGN KEY ([GenreID]) REFERENCES [Book].[Genre] ([GenreID])
);

