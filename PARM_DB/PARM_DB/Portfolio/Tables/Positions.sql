CREATE TABLE [Portfolio].[Positions] (
    [DateID] INT NOT NULL, 
    [PortfolioID] INT NOT NULL, 
    [StockID] INT NOT NULL, 
    [Lots] INT NOT NULL, 
    [MidPrice] DECIMAL NOT NULL, 
    [Value] AS (Lots * MidPrice) PERSISTED NOT NULL,
    [DividendsExpected] DECIMAL NULL, 
    [TaxOwed] DECIMAL NULL, 
    [TaxPaid] DECIMAL NULL, 
    [DividendsReceived] DECIMAL NULL, 
    [FundingCost] DECIMAL NULL, 
    CONSTRAINT [PK_Positions] PRIMARY KEY ([DateID], [PortfolioID], [StockID]), 
    CONSTRAINT [FK_Positions_Date] FOREIGN KEY ([DateID]) REFERENCES [Reference].[Date]([DateID]), 
    CONSTRAINT [FK_Positions_PortfolioDetails] FOREIGN KEY ([PortfolioID]) REFERENCES [Portfolio].[PortfolioDetails]([PortfolioID]), 
    CONSTRAINT [FK_Positions_Stock] FOREIGN KEY ([StockID]) REFERENCES [Reference].[Stock]([StockID])
);

