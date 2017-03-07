CREATE TABLE [Reference].[Exchange]
(
    [ExchangeID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [ExchangeName] NVARCHAR(255) NOT NULL, 
    [ExchangeCode] NCHAR(10) NOT NULL, 
    [CountryID] INT NOT NULL, 
    CONSTRAINT [FK_Exchange_Country] FOREIGN KEY ([CountryID]) REFERENCES [Reference].[Country]([CountryID])
)
