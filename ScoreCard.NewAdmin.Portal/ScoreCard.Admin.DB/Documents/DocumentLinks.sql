CREATE TABLE [dbo].[DocumentLinks]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY ,
	[DocumentId] UNIQUEIDENTIFIER NULL, 
	[LinkedEntityType] NVARCHAR(50) NULL, 
    [LinkedEntityId] NVARCHAR(50) NULL,
    CONSTRAINT [FK_DocumentLinks_Document] FOREIGN KEY (DocumentID) REFERENCES Document(DocumentID) 
)
