CREATE TABLE [dbo].[AdminApplicationDocumentNotes]
(
	[Id] UNIQUEIDENTIFIER DEFAULT NEWID() NOT NULL PRIMARY KEY ,
	[NoteAddedDate] DATETIME NULL,
	[Note] NVARCHAR(1000) NULL,
	[ApplicationId] UNIQUEIDENTIFIER  NOT NULL, 
	[DocumentID] UNIQUEIDENTIFIER  NOT NULL, 
	CONSTRAINT [FK_AdminApplicationDocumentNotes_Application] FOREIGN KEY ([ApplicationId]) REFERENCES Application([Id]),	 
	CONSTRAINT [FK_AdminApplicationDocumentNotes_Document] FOREIGN KEY (DocumentID) REFERENCES Document(DocumentID)
)
