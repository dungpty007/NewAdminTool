CREATE TABLE [dbo].[Application]
(
	[Id] UNIQUEIDENTIFIER DEFAULT NEWID() NOT NULL PRIMARY KEY ,
	[AssessorId] UNIQUEIDENTIFIER NOT NULL,
	[ApplicationStatus]  int NULL,
	[CreationDate] DATETIME NULL, 
    [CurrentStage] INT NULL, 
    [Stage1AdminReviewRequested] BIT NULL, 
    [Stage3AdminReviewRequested] BIT NULL, 
    [Stage5AdminReviewRequested] BIT NULL, 
    [TrainingStatus] INT NULL, 
    [Active] BIT NULL, 
    [IsAutoEmail] BIT NULL DEFAULT 1
)
