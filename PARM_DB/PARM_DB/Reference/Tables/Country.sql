CREATE TABLE [Reference].[Country]
(
    [CountryID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [CountryName] NVARCHAR(255) NOT NULL, 
    [CountryISOCode] NCHAR(3) NOT NULL, 
    [CurrencyID] INT NOT NULL, 
    CONSTRAINT [FK_Country_Currency] FOREIGN KEY ([CurrencyID]) REFERENCES [Reference].[Currency]([CurrencyID])
)
