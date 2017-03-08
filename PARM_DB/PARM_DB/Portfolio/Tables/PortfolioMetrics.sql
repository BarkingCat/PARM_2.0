CREATE TABLE [Portfolio].[PortfolioMetrics] (
    [DateID]      INT NOT NULL,
    [PortfolioID] INT NOT NULL, 
    [CapitalValue] MONEY NOT NULL, 
    [EVA] MONEY NOT NULL, 
    [WACC] DECIMAL NOT NULL, 
    [SharpeRatio] DECIMAL NOT NULL, 
    [LVR] DECIMAL NOT NULL, 
    [LVRUtilisation] DECIMAL NOT NULL, 
    CONSTRAINT [PK_PortfolioMetrics] PRIMARY KEY ([DateID], [PortfolioID]), 
    CONSTRAINT [FK_PortfolioMetrics_Date] FOREIGN KEY ([DateID]) REFERENCES [Reference].[Date]([DateID]), 
    CONSTRAINT [FK_PortfolioMetrics_Portfolio] FOREIGN KEY ([PortfolioID]) REFERENCES [Portfolio].[PortfolioDetails]([PortfolioID]) 
);

