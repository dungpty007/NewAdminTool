CREATE TABLE [dbo].[Intermediary]
(
	[Id] UNIQUEIDENTIFIER DEFAULT NEWID() NOT NULL PRIMARY KEY ,
	[AssessorId] UNIQUEIDENTIFIER NOT NULL,
	[ApplicationStatus]  int NULL,
	[CreationDate] DATETIME NULL, 
    [AdminReviewRequested] BIT NULL 
)
