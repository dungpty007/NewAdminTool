CREATE TABLE [dbo].[QAEvent]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [QADate] DATE NOT NULL, 
    [DemeritPoints] INT NOT NULL, 
    [Note] NVARCHAR(MAX) NULL, 
	[DemeritReviewRecommendation] NVARCHAR(1000) NULL,
	[DemeritReviewDate] DATE NULL, 
    [UserId] UNIQUEIDENTIFIER NULL
)
