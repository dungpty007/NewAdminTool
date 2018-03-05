CREATE TABLE [dbo].[DocumentCategory]
(
	[DocumentCategoryId]  UNIQUEIDENTIFIER NOT NULL PRIMARY KEY ,
	[Name] NVARCHAR(200) NULL, 
	[ApplicationStage] NVARCHAR(200) NULL,
	[TrackExpiry] BIT NULL, 
	[Mandatory] BIT NULL, 
	[NeedsExpiryDate] BIT NULL, 
	[NeedsStartDate] BIT NULL, 
	[YearsRequired] Int NULL, 
    [Note] NVARCHAR(1000) NULL, 
    [Type] INT NULL 
)
