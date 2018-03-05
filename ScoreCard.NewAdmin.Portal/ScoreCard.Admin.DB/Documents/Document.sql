CREATE TABLE [dbo].[Document]
(
	[DocumentID] UNIQUEIDENTIFIER DEFAULT NEWID() NOT NULL PRIMARY KEY , 
    [DocumentCategoryId] UNIQUEIDENTIFIER NOT NULL, 
    [DocumentOwnerID] UNIQUEIDENTIFIER NULL, 
    [OwnerType] NVARCHAR(50) NULL, 
    [Active] BIT NULL, 
    [CreatedDate] DATETIME NULL,
	[FileName] NVARCHAR(Max) NULL, 
    [DocumentDate] DATETIME NULL, 
    CONSTRAINT [FK_Document_DocumentCategory] FOREIGN KEY ([DocumentCategoryId]) REFERENCES DocumentCategory([DocumentCategoryId]) 

)
