﻿CREATE TABLE [dbo].[IntermediaryLinks]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY ,
	[AssessorId] UNIQUEIDENTIFIER NOT NULL,
	[IntermediaryId] UNIQUEIDENTIFIER NOT NULL
)