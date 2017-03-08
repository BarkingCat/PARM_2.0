CREATE TABLE [Portfolio].[ProfitAndLoss] (
    [DateID] INT NOT NULL, 
    [PortfolioID] INT NOT NULL, 
    [StockID] INT NOT NULL, 
    [DailyLotsChange] INT NOT NULL, 
    [MTDLotsChange] INT NOT NULL, 
    [YTDLotsChange] INT NOT NULL, 
    [DailyValueChange] DECIMAL NOT NULL, 
    [MTDValueChange] DECIMAL NOT NULL, 
    [YTDValueChange] DECIMAL NOT NULL, 
    CONSTRAINT [PK_ProfitAndLoss] PRIMARY KEY ([DateID], [PortfolioID], [StockID])
);

