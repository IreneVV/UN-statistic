CREATE TABLE [Book].[BookWork] (
    [WorkID] INT NOT NULL,
    [BookID] INT NOT NULL,
    CONSTRAINT [PK_Work_Book] PRIMARY KEY CLUSTERED ([WorkID] ASC, [BookID] ASC),
    CONSTRAINT [FK_WorkBook_BookID] FOREIGN KEY ([BookID]) REFERENCES [Book].[Book] ([BookID]),
    CONSTRAINT [FK_WorkBook_WorkID] FOREIGN KEY ([WorkID]) REFERENCES [Book].[Work] ([WorkID])
);

