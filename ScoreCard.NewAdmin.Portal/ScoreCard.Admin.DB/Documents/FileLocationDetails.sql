CREATE TABLE [dbo].[FileLocationDetails]
(
	[DocumentId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY ,
	 [CloudContainerName] NVARCHAR(max) NULL,
	  [CloudID] NVARCHAR(max) NULL,
	  CONSTRAINT [FK_FileLocationDetails_Document] FOREIGN KEY (DocumentId) REFERENCES Document(DocumentId)
)
