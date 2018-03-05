CREATE TABLE [dbo].[ExamEventBooking]
(
	[BookingId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [ExamEventId] UNIQUEIDENTIFIER NOT NULL, 
	 [ApplicationId] UNIQUEIDENTIFIER NOT NULL, 
    [BookingDate] DATETIME NOT NULL, 
    [BookingActive] BIT NOT NULL, 
    [ExamForAssessorId] UNIQUEIDENTIFIER NOT NULL, 
    CONSTRAINT [FK_ExamEventBooking_TrainingEvent] FOREIGN KEY (ExamEventId) REFERENCES ExamEvent(Id),
	  CONSTRAINT [FK_ExamEventBooking_Application] FOREIGN KEY (ApplicationId) REFERENCES Application(Id)
)
