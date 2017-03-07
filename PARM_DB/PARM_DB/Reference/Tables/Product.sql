CREATE TABLE [Reference].[Product] (
    [ProductID] INT NOT NULL IDENTITY, 
    [ProductType] NVARCHAR(20) NOT NULL, 
    [ProductName] NVARCHAR(50) NOT NULL, 
    CONSTRAINT [PK_Product] PRIMARY KEY ([ProductID])
);

