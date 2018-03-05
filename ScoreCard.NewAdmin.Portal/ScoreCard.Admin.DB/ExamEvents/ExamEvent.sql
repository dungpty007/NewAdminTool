CREATE TABLE [dbo].[ExamEvent]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [ExamEventName] NVARCHAR(200) NOT NULL,    
    [ExamEventDate] DATE NOT NULL,
	 [Description] NVARCHAR(MAX) NULL, 
    [BookingClosingDate] DATE NOT NULL,   
	[AllocateExaminer] NVARCHAR(MAX) NOT NULL, 
	[Venue] NVARCHAR(MAX) NULL, 
	[StartTime] TIME NOT NULL, 
	[EndTime] TIME NOT NULL,
	[ApplicantEmailAddress] NVARCHAR(MAX) NOT NULL, 
	[AssessorId] UNIQUEIDENTIFIER NOT NULL,   
	[ApplicationId] UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID(),
	[ExamVenueId] UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID(),
	[ExamOutcome] BIT NULL,
	 [ExamNote] NVARCHAR(1000) NULL,
	 CONSTRAINT [FK_ExamEvent_Application] FOREIGN KEY ([ApplicationId]) REFERENCES Application([Id])
)




