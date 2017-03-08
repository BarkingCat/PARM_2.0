CREATE TABLE [Portfolio].[RiskMetrics] (
    [DateID] INT NOT NULL, 
    [PortfolioID] INT NOT NULL, 
    [StockID] INT NOT NULL, 
    [Delta] DECIMAL NOT NULL, 
    [Gamma] DECIMAL NOT NULL, 
    [Rho] DECIMAL NOT NULL, 
    [Volatility] DECIMAL NOT NULL, 
    [SMA_Price] DECIMAL NOT NULL, 
    CONSTRAINT [PK_RiskMetrics] PRIMARY KEY ([DateID], [PortfolioID], [StockID])
);

