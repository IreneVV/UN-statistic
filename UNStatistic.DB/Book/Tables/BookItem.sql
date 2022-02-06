CREATE TABLE [Book].[BookItem] (
    [ItemID] INT           IDENTITY (1, 1) NOT NULL,
    [BookID] INT           NOT NULL,
    [State]  NVARCHAR (50) NULL,
    CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED ([ItemID] ASC),
    CONSTRAINT [FK_Item_BookID] FOREIGN KEY ([BookID]) REFERENCES [Book].[Book] ([BookID])
);

