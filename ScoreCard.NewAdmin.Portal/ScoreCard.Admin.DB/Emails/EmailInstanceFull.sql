CREATE TABLE [dbo].[EmailInstanceFull]
(
	[EmailInstanceID] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [EmailTo] NVARCHAR(500) NULL, 
    [Subject] NVARCHAR(500) NULL, 
    [Body] NVARCHAR(500) NULL, 
    CONSTRAINT [FK_EmailInstanceFull_EmailInstance] FOREIGN KEY (EmailInstanceID) REFERENCES EmailInstance(EmailInstanceID)
)
