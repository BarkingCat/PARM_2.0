CREATE TABLE [Staging].[TradeHistory] (
    [PortfolioID] INT NOT NULL,
    [BrokerID] INT NOT NULL, 
    [Code] NVARCHAR(10) NOT NULL, 
    [Company] NVARCHAR(255) NOT NULL, 
    [Type] NVARCHAR(10) NOT NULL, 
    [Quantity] INT NOT NULL, 
    [UnitPrice] DECIMAL NOT NULL, 
    [TradeValue] DECIMAL NOT NULL, 
    [Brokerage_inc_GST] DECIMAL NOT NULL, 
    [GST] DECIMAL NOT NULL, 
    [ContractNote] NVARCHAR(50) NOT NULL, 
    [TotalValue] DECIMAL NOT NULL, 
    CONSTRAINT [PK_TradeHistory] PRIMARY KEY ([PortfolioID], [BrokerID]), 
    CONSTRAINT [FK_TradeHistory_Portfolio] FOREIGN KEY ([PortfolioID]) REFERENCES [Portfolio].[PortfolioDetails]([PortfolioID]), 
    CONSTRAINT [FK_TradeHistory_Broker] FOREIGN KEY ([BrokerID]) REFERENCES [Reference].[Broker]([BrokerID])
);