CREATE TABLE [dbo].[EmailAttachFile]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY,
	[ApplicationId] UNIQUEIDENTIFIER  NULL, 
	[FileName] NVARCHAR(Max) NULL, 
	[CreatedDate] DATETIME NULL,
	[OwnerID] UNIQUEIDENTIFIER NULL, 
	[AttachType] NVARCHAR(200) NULL, 
	[Active] BIT NULL, 
	[CloudContainerName] NVARCHAR(max) NULL,
    [CloudID] NVARCHAR(max) NULL, 
    [IsDefault] BIT NULL
)
