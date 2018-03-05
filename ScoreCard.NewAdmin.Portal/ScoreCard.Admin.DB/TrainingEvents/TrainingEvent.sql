CREATE TABLE [dbo].[TrainingEvent]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [EventName] NVARCHAR(200) NOT NULL, 
    [EventType] NVARCHAR(50) NOT NULL, 
    [EventDate] DATE NOT NULL, 
    [BookingClosingDate] DATE NOT NULL, 
    [Description] NVARCHAR(MAX) NULL, 
    [LocationId] UNIQUEIDENTIFIER NOT NULL, 
    [Capacity] INT NOT NULL,
	[FromTime] TIME NULL, 
	[ToTime] TIME NULL,
	[RoomNumber] NVARCHAR(200) NULL,
	[TrainersDetails] NVARCHAR(MAX) NULL, 

    CONSTRAINT [FK_TrainingEvent_TrainingLocation] FOREIGN KEY ([LocationId]) REFERENCES [TrainingLocation]([LocationId])
)

GO

CREATE INDEX [IX_TrainingEvent_EventDate] ON [dbo].[TrainingEvent] (EventDate)
