CREATE TABLE [Control].[Users] (
    [UserID]       UNIQUEIDENTIFIER NOT NULL,
    [UserName]     NCHAR (20)       NOT NULL,
    [PasswordHash] NVARCHAR (255)   NOT NULL,
    [FirstName]    NVARCHAR (255)   NOT NULL,
    [LastName]     NVARCHAR (255)   NOT NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([UserID] ASC)
);

