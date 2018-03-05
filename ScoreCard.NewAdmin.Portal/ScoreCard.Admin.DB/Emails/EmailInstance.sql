CREATE TABLE [dbo].[EmailInstance]
(
	[EmailInstanceID] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [EmailType] NVARCHAR(200) NOT NULL, 
    [CreatedDate] DATETIME NOT NULL, 
    [ModelData] NVARCHAR(MAX) NULL, 
    [SendingStatus] NVARCHAR(50) NULL, 
    [SentDate] DATETIME NULL, 
    [FailedDate] DATETIME NULL
)

GO

CREATE INDEX [IX_EmailInstance_CreatedDate] ON [dbo].[EmailInstance] (CreatedDate)
