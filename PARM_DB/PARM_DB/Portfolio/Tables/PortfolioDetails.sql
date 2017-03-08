CREATE TABLE [Portfolio].[PortfolioDetails] (
    [PortfolioID] INT NOT NULL IDENTITY, 
    [UserID] UNIQUEIDENTIFIER NOT NULL, 
    [PortfolioName] NVARCHAR(50) NOT NULL, 
    [PortfolioCurrencyID] INT NOT NULL, 
    [IsMarginLoan] BIT NOT NULL DEFAULT 0, 
    [MarginLoanLimit] MONEY NULL, 
    [MarginLoanInterestRate] DECIMAL NULL, 
    [StopLossPercentage] DECIMAL NULL, 
    [LVRLimit] DECIMAL NULL, 
    CONSTRAINT [FK_PortfolioDetails_User] FOREIGN KEY ([UserID]) REFERENCES [Control].[Users]([UserID]), 
    CONSTRAINT [PK_PortfolioDetails] PRIMARY KEY ([PortfolioID])
);

