CREATE TABLE [dbo].[TrainingLocation]
(
	[LocationId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [Name] NVARCHAR(100) NULL, 
    [VagueLocation] NVARCHAR(MAX) NULL, 
    [DetailedLocation] NVARCHAR(MAX) NULL, 
    [AccessDetails] NVARCHAR(MAX) NULL, 
    [DefaultCapacity] INT NULL, 
    [Active] BIT NULL
)
