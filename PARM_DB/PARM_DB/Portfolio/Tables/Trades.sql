CREATE TABLE [Portfolio].[Trades] (
    [PortfolioID] INT NOT NULL, 
    [TradeID] INT NOT NULL IDENTITY, 
    [ExternalTradeID] NVARCHAR(50) NOT NULL, 
    [TradeDate] DATETIME NOT NULL, 
    [SettlementDate] DATETIME NULL, 
    [StockID] INT NOT NULL, 
    [ProductID] INT NOT NULL, 
    [BuySellFlag] NCHAR(4) NOT NULL, 
    [Lots] INT NOT NULL, 
    [Price] DECIMAL NOT NULL, 
    [Brokerage] DECIMAL NOT NULL, 
    [BrokerageGST] DECIMAL NOT NULL, 
    CONSTRAINT [PK_Trades] PRIMARY KEY ([PortfolioID], [TradeID]), 
    CONSTRAINT [FK_Trades_Stock] FOREIGN KEY ([StockID]) REFERENCES [Reference].[Stock]([StockID]), 
    CONSTRAINT [FK_Trades_Product] FOREIGN KEY ([ProductID]) REFERENCES [Reference].[Product]([ProductID])
);

