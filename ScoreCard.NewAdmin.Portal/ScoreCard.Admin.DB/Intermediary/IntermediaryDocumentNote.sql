CREATE TABLE [dbo].[IntermediaryDocumentNote]
(
	[Id] UNIQUEIDENTIFIER DEFAULT NEWID() NOT NULL PRIMARY KEY ,
	[NoteAddedDate] DATETIME NULL,
	[Note] NVARCHAR(1000) NULL,
	[IntemediaryId] UNIQUEIDENTIFIER  NOT NULL, 
	[DocumentID] UNIQUEIDENTIFIER  NOT NULL, 
	CONSTRAINT [FK_IntermediaryDocumentNote_Intermediary] FOREIGN KEY ([IntemediaryId]) REFERENCES Intermediary([Id]),	 
	CONSTRAINT [FK_IntermediaryDocumentNote_Document] FOREIGN KEY (DocumentID) REFERENCES Document(DocumentID)
)
