CREATE TABLE [dbo].[IntermediaryDocument]
(
	[IntermediaryId] UNIQUEIDENTIFIER  NOT NULL, 
    [DocumentCategoryID] UNIQUEIDENTIFIER NOT NULL,   
    [UploadedDate] DATETIME NULL,
	[DocumentId] UNIQUEIDENTIFIER NOT NULL,
	[DocumentReviewStatus] INT NULL 
	CONSTRAINT [PK_IntermediaryDocument] PRIMARY KEY (IntermediaryId, DocumentId),
    CONSTRAINT [FK_IntermediaryDocument_DocumentCategory] FOREIGN KEY ([DocumentCategoryID]) REFERENCES DocumentCategory([DocumentCategoryId]) , 
    CONSTRAINT [FK_IntermediaryDocument_Document] FOREIGN KEY (DocumentId) REFERENCES Document(DocumentID) ,
	CONSTRAINT [FK_IntermediaryDocument_Intermediary] FOREIGN KEY (IntermediaryId) REFERENCES [Intermediary](Id) 
)
