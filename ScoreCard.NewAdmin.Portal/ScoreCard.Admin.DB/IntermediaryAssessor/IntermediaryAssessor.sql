CREATE TABLE [dbo].[IntermediaryAssessor]
(
    [Id] UNIQUEIDENTIFIER DEFAULT NEWID() NOT NULL PRIMARY KEY ,
	[AssessorId] UNIQUEIDENTIFIER  NOT NULL,  
	[IntermediaryContent] nvarchar(3000) NOT NULL, 
    [Status] INT NULL DEFAULT 0 
)
