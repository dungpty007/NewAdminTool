CREATE TABLE [dbo].[TrainingEventBooking]
(
	[BookingId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [TrainingEventId] UNIQUEIDENTIFIER NOT NULL, 
	 [ApplicationId] UNIQUEIDENTIFIER NOT NULL, 
    [BookingDate] DATETIME NOT NULL, 
    [BookingActive] BIT NOT NULL, 
    [TrainingForAssessorId] UNIQUEIDENTIFIER NOT NULL, 
	[TrainingOutcome] BIT NULL,
	 [TrainingNote] NVARCHAR(1000) NULL,
    CONSTRAINT [FK_TrainingEventBooking_TrainingEvent] FOREIGN KEY (TrainingEventId) REFERENCES TrainingEvent(Id),
	  CONSTRAINT [FK_TrainingEventBooking_Application] FOREIGN KEY (ApplicationId) REFERENCES Application(Id)
)
