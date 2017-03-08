CREATE TABLE [MarketData].[BondPrices] (
    [DateID] INT NOT NULL, 
    [BondID] INT NOT NULL, 
    [BidPrice] DECIMAL NOT NULL, 
    [MidPrice] DECIMAL NOT NULL, 
    [AskPrice] DECIMAL NOT NULL, 
    [Volume] INT NULL, 
    CONSTRAINT [PK_BondPrices] PRIMARY KEY ([DateID], [BondID]), 
    CONSTRAINT [FK_BondPrices_Date] FOREIGN KEY ([DateID]) REFERENCES [Reference].[Date]([DateID]), 
    CONSTRAINT [FK_BondPrices_Bond] FOREIGN KEY ([BondID]) REFERENCES [Reference].[Bond]([BondID])
);

