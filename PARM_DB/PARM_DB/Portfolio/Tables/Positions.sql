CREATE TABLE [Portfolio].[Positions] (
    [DateID] INT NOT NULL, 
    [PortfolioID] INT NOT NULL, 
    [StockID] INT NOT NULL, 
    [Lots] INT NOT NULL, 
    [MidPrice] DECIMAL NOT NULL, 
    [Value] DECIMAL NOT NULL, 
    [TaxOwed] DECIMAL NULL, 
    [TaxPaid] DECIMAL NULL, 
    [DividendsReceived] DECIMAL NULL, 
    [FundingCost] DECIMAL NULL, 
    CONSTRAINT [PK_Positions] PRIMARY KEY ([DateID], [PortfolioID], [StockID])
);

