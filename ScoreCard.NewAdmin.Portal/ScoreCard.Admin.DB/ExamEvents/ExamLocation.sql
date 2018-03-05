CREATE TABLE [dbo].[ExamLocation]
(
	[ExamVenueId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [HouseName] NVARCHAR(100) NOT NULL, 
    [Description] NVARCHAR(MAX) NULL, 
    [Address] NVARCHAR(MAX) NOT NULL, 
    [Active] BIT NULL,
	[ExamVenueNote] NVARCHAR(1000) NULL 
)