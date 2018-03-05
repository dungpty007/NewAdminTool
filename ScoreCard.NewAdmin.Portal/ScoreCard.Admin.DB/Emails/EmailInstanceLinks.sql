CREATE TABLE [dbo].[EmailInstanceLinks]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [EmailInstanceId] UNIQUEIDENTIFIER NOT NULL, 
    [LinkedEntityType] NVARCHAR(50) NULL, 
    [LinkedEntityId] NVARCHAR(50) NULL, 
    CONSTRAINT [FK_EmailInstanceLinks_EmailInstance] FOREIGN KEY (EmailInstanceId) REFERENCES EmailInstance(EmailInstanceId)
)

GO

CREATE INDEX [IX_EmailInstanceLinks_LinkedEntity] ON [dbo].[EmailInstanceLinks] (LinkedEntityType, LinkedEntityId)
