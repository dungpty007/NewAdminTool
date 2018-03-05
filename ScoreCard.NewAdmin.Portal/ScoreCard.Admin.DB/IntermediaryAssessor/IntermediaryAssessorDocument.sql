CREATE TABLE [dbo].[IntermediaryAssessorDocument]
(
	[IntermediaryAssessorId] UNIQUEIDENTIFIER  NOT NULL, 
	[DocumentId] UNIQUEIDENTIFIER NOT NULL, 
    [DocumentReviewStatus] INT NULL, 
	CONSTRAINT [PK_IntermediaryAssessorDocument] PRIMARY KEY (IntermediaryAssessorId, DocumentId), 
	CONSTRAINT [FK_IntermediaryAssessorDocument_IntermediaryAssessor] FOREIGN KEY ([IntermediaryAssessorId]) REFERENCES IntermediaryAssessor([Id]) ,  
    CONSTRAINT [FK_IntermediaryAssessorDocument_Document] FOREIGN KEY (DocumentId) REFERENCES Document(DocumentID)  
)
