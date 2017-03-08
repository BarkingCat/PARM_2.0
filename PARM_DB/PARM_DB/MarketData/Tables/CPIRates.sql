CREATE TABLE [MarketData].[CPIRates] (
    [DateID] INT NOT NULL, 
    [CurrencyID] INT NOT NULL, 
    [CountryID] INT NOT NULL,
    [CPIRate] DECIMAL NOT NULL, 
    CONSTRAINT [PK_CPIRates] PRIMARY KEY ([CountryID], [CurrencyID], [DateID]), 
    CONSTRAINT [FK_CPIRates_Date] FOREIGN KEY ([DateID]) REFERENCES [Reference].[Date]([DateID]), 
    CONSTRAINT [FK_CPIRates_Currency] FOREIGN KEY ([CurrencyID]) REFERENCES [Reference].[Currency]([CurrencyID]), 
    CONSTRAINT [FK_CPIRates_Country] FOREIGN KEY ([CountryID]) REFERENCES [Reference].[Country]([CountryID])
);

