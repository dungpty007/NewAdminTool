CREATE TABLE [dbo].[AdminApplicationNotes]
(
	[Id] UNIQUEIDENTIFIER DEFAULT NEWID() NOT NULL PRIMARY KEY ,
	[NoteAddedDate] DATETIME NULL,
	[Note] NVARCHAR(1000) NULL,
	[UserId] UNIQUEIDENTIFIER  NULL, 
	[ApplicationId] UNIQUEIDENTIFIER  NOT NULL, 
	CONSTRAINT [FK_AdminApplicationNotes_Application] FOREIGN KEY ([ApplicationId]) REFERENCES Application([Id]) 
)
