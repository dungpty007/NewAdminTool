CREATE TABLE [dbo].[AuditEvent]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY,        
    [AuditDate] DATE NOT NULL,
	[Description] NVARCHAR(MAX) NULL, 	
	[Assessor] NVARCHAR(MAX) NULL,
	[Assessment] NVARCHAR(MAX) NULL,
	[Postcode] nvarchar(50)  NULL,
    [Auditor] NVARCHAR(MAX) NOT NULL,
	[Note] NVARCHAR(MAX) NULL,
	[AdminRecommendationNote] NVARCHAR(MAX) NULL,
	[IsRejected] BIT NULL,
	[AuditorAuditDate] DATE NULL,
	[AuditorFeedbackNote] NVARCHAR(MAX) NULL,
	[AuditorRecommendationNote] NVARCHAR(MAX) NULL
)
