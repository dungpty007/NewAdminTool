CREATE TABLE [dbo].[ApplicationDocument]
(
	[ApplicationId] UNIQUEIDENTIFIER  NOT NULL, 
    [DocumentCategoryID] UNIQUEIDENTIFIER NOT NULL,     
    [UploadedDate] DATETIME NULL,
	[DocumentId] UNIQUEIDENTIFIER NOT NULL,
	[DocumentReviewStatus] INT NULL, 
    [Stage] INT NULL, 
	[Isarchived] BIT NULL, 
    [LocalPath] NCHAR(1000) NULL, 
    CONSTRAINT [PK_ApplicationDocument] PRIMARY KEY (ApplicationId, DocumentId),
    CONSTRAINT [FK_ApplicationDocument_DocumentCategory] FOREIGN KEY ([DocumentCategoryID]) REFERENCES DocumentCategory([DocumentCategoryId]) , 
    CONSTRAINT [FK_ApplicationDocument_Document] FOREIGN KEY (DocumentId) REFERENCES Document(DocumentID) ,
	CONSTRAINT [FK_ApplicationDocument_Application] FOREIGN KEY (ApplicationId) REFERENCES [Application](Id) 
)
