CREATE TABLE [Portfolio].[ProfitAndLoss] (
    [DateID] INT NOT NULL, 
    [PortfolioID] INT NOT NULL, 
    [StockID] INT NOT NULL,
     
    [DailyLotsChange] INT NOT NULL, 
    [MTDLotsChange] INT NOT NULL, 
    [YTDLotsChange] INT NOT NULL,
    [LTDLotsChange] INT NOT NULL,

    [DailyDividendsExpectedChange] DECIMAL NOT NULL, 
    [MTDDividendsExpectedChange] DECIMAL NOT NULL, 
    [YTDDividendsExpectedChange] DECIMAL NOT NULL,
    [LTDDividendsExpectedChange] DECIMAL NOT NULL, 

    [DailyValueChange] DECIMAL NOT NULL, 
    [MTDValueChange] DECIMAL NOT NULL, 
    [YTDValueChange] DECIMAL NOT NULL,
    [LTDValueChange] DECIMAL NOT NULL,
     
    [DailyDividendsReceivedChange] DECIMAL NOT NULL, 
    [MTDDividendsReceivedChange] DECIMAL NOT NULL, 
    [YTDDividendsReceivedChange] DECIMAL NOT NULL,
    [LTDDividendsReceivedChange] DECIMAL NOT NULL, 

    [DailyFundingCostChange] DECIMAL NOT NULL, 
    [MTDFundingCostChange] DECIMAL NOT NULL, 
    [YTDFundingCostChange] DECIMAL NOT NULL,
    [LTDFundingCostChange] DECIMAL NOT NULL,
     
    CONSTRAINT [PK_ProfitAndLoss] PRIMARY KEY ([DateID], [PortfolioID], [StockID]), 
    CONSTRAINT [FK_ProfitAndLoss_Date] FOREIGN KEY ([DateID]) REFERENCES [Reference].[Date]([DateID]), 
    CONSTRAINT [FK_ProfitAndLoss_PortfolioDetails] FOREIGN KEY ([PortfolioID]) REFERENCES [Portfolio].[PortfolioDetails]([PortfolioID]), 
    CONSTRAINT [FK_ProfitAndLoss_Stock] FOREIGN KEY ([StockID]) REFERENCES [Reference].[Stock]([StockID])
);

