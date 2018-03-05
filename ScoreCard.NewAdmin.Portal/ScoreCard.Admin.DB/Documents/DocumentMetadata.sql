﻿CREATE TABLE [dbo].[DocumentMetadata]
(
	[MetaDataID] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY ,
	[DocumentID] UNIQUEIDENTIFIER NOT NULL, 
	[Key] NVARCHAR(50) NULL,
	[Value] NVARCHAR(200) NULL,
	CONSTRAINT [FK_DocumentMetadata_Document] FOREIGN KEY (DocumentID) REFERENCES Document(DocumentID)
)
