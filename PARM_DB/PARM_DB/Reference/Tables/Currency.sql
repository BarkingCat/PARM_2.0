CREATE TABLE [Reference].[Currency] (
    [CurrencyID] INT NOT NULL IDENTITY, 
    [CurrencyISOCode] NCHAR(10) NOT NULL, 
    [CurrencyName] NVARCHAR(255) NOT NULL, 
    [CentralBank] NVARCHAR(255) NOT NULL, 
    CONSTRAINT [PK_Currency] PRIMARY KEY ([CurrencyID])
);

