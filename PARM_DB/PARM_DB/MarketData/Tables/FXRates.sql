CREATE TABLE [MarketData].[FXRates] (
    [DateID] INT NOT NULL, 
    [SellCurrencyID] INT NOT NULL, 
    [BuyCurrencyID] INT NOT NULL, 
    [BidPrice] DECIMAL NOT NULL, 
    [MidPrice] DECIMAL NOT NULL, 
    [AskPrice] DECIMAL NOT NULL, 
    CONSTRAINT [PK_FXRates] PRIMARY KEY ([DateID], [SellCurrencyID], [BuyCurrencyID]), 
    CONSTRAINT [FK_FXRates_Date] FOREIGN KEY ([DateID]) REFERENCES [Reference].[Date]([DateID]), 
    CONSTRAINT [FK_FXRates_Currency_1] FOREIGN KEY ([SellCurrencyID]) REFERENCES [Reference].[Currency]([CurrencyID]), 
    CONSTRAINT [FK_FXRates_Currency_2] FOREIGN KEY ([BuyCurrencyID]) REFERENCES [Reference].[Currency]([CurrencyID])
);

