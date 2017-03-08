CREATE TABLE [MarketData].[StockPrices] (
    [DateID] INT NOT NULL, 
    [StockID] INT NOT NULL, 
    [BidPrice] DECIMAL NOT NULL, 
    [MidPrice] DECIMAL NOT NULL, 
    [AskPrice] DECIMAL NOT NULL, 
    [Volume] INT NOT NULL, 
    CONSTRAINT [PK_StockPrices] PRIMARY KEY ([DateID], [StockID]), 
    CONSTRAINT [FK_StockPrices_Date] FOREIGN KEY ([DateID]) REFERENCES [Reference].[Date]([DateID])
);

