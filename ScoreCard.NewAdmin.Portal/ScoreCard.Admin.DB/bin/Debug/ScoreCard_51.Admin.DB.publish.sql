﻿/*
Deployment script for ScoreCard.Admin.DB

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "ScoreCard.Admin.DB"
:setvar DefaultFilePrefix "ScoreCard.Admin.DB"
:setvar DefaultDataPath "C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER16\MSSQL\DATA\"
:setvar DefaultLogPath "C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER16\MSSQL\DATA\"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'Altering [dbo].[IntermediaryAssessor]...';


GO
ALTER TABLE [dbo].[IntermediaryAssessor]
    ADD [Status] INT DEFAULT 0 NULL;


GO
PRINT N'Creating [dbo].[RiskFlagsRecordNote]...';


GO
CREATE TABLE [dbo].[RiskFlagsRecordNote] (
    [Id]               UNIQUEIDENTIFIER NOT NULL,
    [AssessorID]       UNIQUEIDENTIFIER NOT NULL,
    [RiskPrincipalID]  UNIQUEIDENTIFIER NOT NULL,
    [PrincipalOutcome] BIT              NULL,
    [NoteAddedDate]    DATETIME         NULL,
    [RecordRiskNote]   NVARCHAR (1000)  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Creating [dbo].[RiskPrincipal]...';


GO
CREATE TABLE [dbo].[RiskPrincipal] (
    [Id]       UNIQUEIDENTIFIER NOT NULL,
    [Pricipal] NVARCHAR (1000)  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Creating unnamed constraint on [dbo].[RiskFlagsRecordNote]...';


GO
ALTER TABLE [dbo].[RiskFlagsRecordNote]
    ADD DEFAULT NEWID() FOR [Id];


GO
PRINT N'Creating unnamed constraint on [dbo].[RiskPrincipal]...';


GO
ALTER TABLE [dbo].[RiskPrincipal]
    ADD DEFAULT NEWID() FOR [Id];


GO
PRINT N'Creating [dbo].[FK_RiskFlagsRecordNote_Assessor]...';


GO
ALTER TABLE [dbo].[RiskFlagsRecordNote] WITH NOCHECK
    ADD CONSTRAINT [FK_RiskFlagsRecordNote_Assessor] FOREIGN KEY ([AssessorID]) REFERENCES [dbo].[ProfileInformation] ([Id]);


GO
PRINT N'Creating [dbo].[FK_RiskFlagsRecordNote_RiskPrincipal]...';


GO
ALTER TABLE [dbo].[RiskFlagsRecordNote] WITH NOCHECK
    ADD CONSTRAINT [FK_RiskFlagsRecordNote_RiskPrincipal] FOREIGN KEY ([RiskPrincipalID]) REFERENCES [dbo].[RiskPrincipal] ([Id]);


GO
/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

if (select count(1) from [dbo].[DocumentCategory]) = 0
	BEGIN
		



INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [ApplicationStage], [TrackExpiry], [Mandatory], [NeedsExpiryDate], [NeedsStartDate], [YearsRequired], [Note], [Type]) VALUES (N'8f5d6eea-e4e3-4406-92d1-7564f59ac658', N'Qualifications', N'1', NULL, 0, 0, 0, NULL, NULL, 1)

INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [ApplicationStage], [TrackExpiry], [Mandatory], [NeedsExpiryDate], [NeedsStartDate], [YearsRequired], [Note], [Type]) VALUES (N'7cc45828-aaef-400c-97fc-8b29e40a1afb', N'Documented Experience', N'1', NULL, 1, 0, 0, NULL, NULL, 1)

INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [ApplicationStage], [TrackExpiry], [Mandatory], [NeedsExpiryDate], [NeedsStartDate], [YearsRequired], [Note], [Type]) VALUES (N'cb9e01a9-5964-47cd-aeed-6b1e04733c65', N'CV/Resume', N'1', NULL, 1, 0, 0, NULL, NULL, 1)

INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [ApplicationStage], [TrackExpiry], [Mandatory], [NeedsExpiryDate], [NeedsStartDate], [YearsRequired], [Note], [Type]) VALUES (N'f28c2133-3ed2-430f-b070-515bfce61a11', N'Professional indemnity Ins', N'3', NULL, 1, 1, 0, NULL, N'Please record expiry date under date column', 1)

INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [ApplicationStage], [TrackExpiry], [Mandatory], [NeedsExpiryDate], [NeedsStartDate], [YearsRequired], [Note], [Type]) VALUES (N'c9be4035-ea9e-45bb-a74b-581d8aecf7ee', N'Safe Work Method Statement', N'3', NULL, 1, 0, 0, NULL, NULL, 1)

INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [ApplicationStage], [TrackExpiry], [Mandatory], [NeedsExpiryDate], [NeedsStartDate], [YearsRequired], [Note], [Type]) VALUES (N'1e5d96f9-0217-410d-bc19-053932e22d77', N'OHS', N'3', NULL, 1, 0, 1, 5, N'Please record award date under date column', 1)

INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [ApplicationStage], [TrackExpiry], [Mandatory], [NeedsExpiryDate], [NeedsStartDate], [YearsRequired], [Note], [Type]) VALUES (N'd869cfbb-cf7e-4f30-9d15-804c0358ecad', N'Brand Materials for Approval', N'0', NULL, 0, 0, 0, NULL, NULL, 2)

INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [ApplicationStage], [TrackExpiry], [Mandatory], [NeedsExpiryDate], [NeedsStartDate], [YearsRequired], [Note], [Type]) VALUES (N'5fd76eaf-1437-4da2-8c38-a15e1b2229a6', N'Working with Children Card', N'3', NULL, 1, 0, 1, 5, N'Please record award date under date column', 1)

INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [ApplicationStage], [TrackExpiry], [Mandatory], [NeedsExpiryDate], [NeedsStartDate], [YearsRequired], [Note], [Type]) VALUES (N'a61f5303-0c3d-49a8-b885-b2d73fb2a9e6', N'Assessor Agreement', N'5', NULL, 1, 1, 0, NULL, N'Please record signed date under date column', 1)

INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [ApplicationStage], [TrackExpiry], [Mandatory], [NeedsExpiryDate], [NeedsStartDate], [YearsRequired], [Note], [Type]) VALUES (N'fd47d6cc-20e0-48dc-b7f0-b6161495a24c', N'Agreement', N'0', NULL, 0, 0, 0, NULL, NULL, 2)

INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [ApplicationStage], [TrackExpiry], [Mandatory], [NeedsExpiryDate], [NeedsStartDate], [YearsRequired], [Note], [Type]) VALUES (N'548e3f25-49b1-46bc-b347-e97198ce1870', N'Public Liability Ins', N'3', NULL, 1, 1, 0, NULL, N'Please record expiry date under date column', 1)

INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [ApplicationStage], [TrackExpiry], [Mandatory], [NeedsExpiryDate], [NeedsStartDate], [YearsRequired], [Note], [Type]) VALUES (N'efc1076f-4dba-46ca-816b-f36ef78d54df', N'Insurance', N'0', NULL, 0, 0, 0, NULL, NULL, 2)
INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [ApplicationStage], [TrackExpiry], [Mandatory], [NeedsExpiryDate], [NeedsStartDate], [YearsRequired], [Note], [Type]) VALUES (N'694996b4-fe6c-4cd6-a031-25782b0a9064', N'Exam Documents', N'4', NULL, 0, 0, 0, NULL, N'Please include exam related documents', 1)

INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [ApplicationStage], [TrackExpiry], [Mandatory], [NeedsExpiryDate], [NeedsStartDate], [YearsRequired], [Note], [Type]) VALUES (N'EEB8774B-37FD-4693-AFF0-30BDECD8A19F', N'Insurance', N'6', NULL, 0, 0, 0, NULL, NULL, 1)



END

-- update document category to change follow feedback: 373
UPDATE [dbo].[DocumentCategory]
   SET  [NeedsExpiryDate] = 1
      ,[NeedsStartDate] = 0
      ,[YearsRequired] = null 
	  ,[Note] ='Please record expiry date under date column'
 WHERE DocumentCategoryId ='5fd76eaf-1437-4da2-8c38-a15e1b2229a6'
GO

GO
PRINT N'Checking existing data against newly created constraints';


GO
USE [$(DatabaseName)];


GO
ALTER TABLE [dbo].[RiskFlagsRecordNote] WITH CHECK CHECK CONSTRAINT [FK_RiskFlagsRecordNote_Assessor];

ALTER TABLE [dbo].[RiskFlagsRecordNote] WITH CHECK CHECK CONSTRAINT [FK_RiskFlagsRecordNote_RiskPrincipal];


GO
PRINT N'Update complete.';


GO