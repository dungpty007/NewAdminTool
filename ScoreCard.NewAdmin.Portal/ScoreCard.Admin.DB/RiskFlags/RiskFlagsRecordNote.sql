CREATE TABLE [dbo].[RiskFlagsRecordNote]
(
	[Id] UNIQUEIDENTIFIER DEFAULT NEWID() NOT NULL PRIMARY KEY ,
	[AssessorID] UNIQUEIDENTIFIER  NOT NULL,
	[RiskPrincipalID] UNIQUEIDENTIFIER  NOT NULL,
	[PrincipalOutcome] BIT NULL,
	[NoteAddedDate] DATETIME NULL,
	[RecordRiskNote] NVARCHAR(1000) NULL,	
	CONSTRAINT [FK_RiskFlagsRecordNote_Assessor] FOREIGN KEY ([AssessorID]) REFERENCES ProfileInformation([Id]),
	CONSTRAINT [FK_RiskFlagsRecordNote_RiskPrincipal] FOREIGN KEY ([RiskPrincipalID]) REFERENCES RiskPrincipal([Id])
)
