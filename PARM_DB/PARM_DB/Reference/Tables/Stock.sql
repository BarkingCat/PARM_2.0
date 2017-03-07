CREATE TABLE [Reference].[Stock] (
    [StockID] INT NOT NULL IDENTITY, 
    [Ticker] NCHAR(3) NOT NULL, 
    [PreviousTicker] NCHAR(3) NOT NULL, 
    [CompanyName] NVARCHAR(255) NOT NULL, 
    [CompanyIndustry] NVARCHAR(255) NOT NULL, 
    [IndustryIndexID] INT NOT NULL, 
    [ExchangeID] INT NOT NULL, 
    CONSTRAINT [PK_Stock] PRIMARY KEY ([StockID]), 
    CONSTRAINT [FK_Stock_Exchange] FOREIGN KEY ([ExchangeID]) REFERENCES [Reference].[Exchange]([ExchangeID])
);

