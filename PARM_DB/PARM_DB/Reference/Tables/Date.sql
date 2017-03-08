CREATE TABLE [Reference].[Date]
(
    [DateID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Date] DATE NOT NULL, 
    [Time] TIME NOT NULL, 
    [DayOfWeek] NCHAR(10) NULL
)
