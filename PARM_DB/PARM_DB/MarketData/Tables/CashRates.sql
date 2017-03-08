CREATE TABLE [MarketData].[CashRates] (
    [DateID] INT NOT NULL, 
    [CurrencyID] INT NOT NULL, 
    [CountryID] INT NOT NULL, 
    [CashRate] DECIMAL NULL, 
    CONSTRAINT [PK_CashRates] PRIMARY KEY ([DateID], [CurrencyID], [CountryID]), 
    CONSTRAINT [FK_CashRates_Date] FOREIGN KEY ([DateID]) REFERENCES [Reference].[Date]([DateID]), 
    CONSTRAINT [FK_CashRates_Currency] FOREIGN KEY ([CurrencyID]) REFERENCES [Reference].[Currency]([CurrencyID]), 
    CONSTRAINT [FK_CashRates_Country] FOREIGN KEY ([CountryID]) REFERENCES [Reference].[Country]([CountryID])
);

