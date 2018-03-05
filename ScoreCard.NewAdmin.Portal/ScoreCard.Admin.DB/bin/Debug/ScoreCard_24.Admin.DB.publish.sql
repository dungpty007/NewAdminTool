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
/*
The column ApplicationId on table [dbo].[ExamEvent] must be changed from NULL to NOT NULL. If the table contains data, the ALTER script may not work. To avoid this issue, you must add values to this column for all rows or mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.

The column ExamVenueId on table [dbo].[ExamEvent] must be changed from NULL to NOT NULL. If the table contains data, the ALTER script may not work. To avoid this issue, you must add values to this column for all rows or mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.
*/

IF EXISTS (select top 1 1 from [dbo].[ExamEvent])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
/*
The column [dbo].[ProfileInformation].[AddressLine3] is being dropped, data loss could occur.
*/

IF EXISTS (select top 1 1 from [dbo].[ProfileInformation])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
PRINT N'Dropping [dbo].[FK_ExamEvent_Application]...';


GO
ALTER TABLE [dbo].[ExamEvent] DROP CONSTRAINT [FK_ExamEvent_Application];


GO
PRINT N'Dropping [dbo].[FK_TrainingEvent_TrainingLocation]...';


GO
ALTER TABLE [dbo].[TrainingEvent] DROP CONSTRAINT [FK_TrainingEvent_TrainingLocation];


GO
PRINT N'Altering [dbo].[ExamEvent]...';


GO
ALTER TABLE [dbo].[ExamEvent] ALTER COLUMN [ApplicationId] UNIQUEIDENTIFIER NOT NULL;

ALTER TABLE [dbo].[ExamEvent] ALTER COLUMN [ExamVenueId] UNIQUEIDENTIFIER NOT NULL;


GO
PRINT N'Altering [dbo].[ProfileInformation]...';


GO
ALTER TABLE [dbo].[ProfileInformation] DROP COLUMN [AddressLine3];


GO
ALTER TABLE [dbo].[ProfileInformation]
    ADD [City]         VARCHAR (50) NULL,
        [MobileNumber] VARCHAR (50) NULL,
        [PhoneNumber]  VARCHAR (50) NULL;


GO
PRINT N'Creating unnamed constraint on [dbo].[ExamEvent]...';


GO
ALTER TABLE [dbo].[ExamEvent]
    ADD DEFAULT NEWID() FOR [ApplicationId];


GO
PRINT N'Creating unnamed constraint on [dbo].[ExamEvent]...';


GO
ALTER TABLE [dbo].[ExamEvent]
    ADD DEFAULT NEWID() FOR [ExamVenueId];


GO
PRINT N'Creating [dbo].[FK_ExamEvent_Application]...';


GO
ALTER TABLE [dbo].[ExamEvent] WITH NOCHECK
    ADD CONSTRAINT [FK_ExamEvent_Application] FOREIGN KEY ([ApplicationId]) REFERENCES [dbo].[Application] ([Id]);


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

--if (select count(1) from [dbo].[DocumentType]) = 0
--	BEGIN
		
--	INSERT INTO [dbo].[DocumentType]  ([DocumentTypeName])  VALUES  ('Qualifications');
--	INSERT INTO [dbo].[DocumentType]  ([DocumentTypeName])  VALUES  ('Experience');
--	INSERT INTO [dbo].[DocumentType]  ([DocumentTypeName])  VALUES  ('Resume');
--	INSERT INTO [dbo].[DocumentType]  ([DocumentTypeName])  VALUES  ('OHS');
--	INSERT INTO [dbo].[DocumentType]  ([DocumentTypeName])  VALUES  ('SafeWorkMethodStatement');
--	INSERT INTO [dbo].[DocumentType]  ([DocumentTypeName])  VALUES  ('PublicLiabilityIns');
--	INSERT INTO [dbo].[DocumentType]  ([DocumentTypeName])  VALUES  ('ProfessionalIndemnityIns');
--	INSERT INTO [dbo].[DocumentType]  ([DocumentTypeName])  VALUES  ('WorkingWithChildrenCard');
--	INSERT INTO [dbo].[DocumentType]  ([DocumentTypeName])  VALUES  ('AssessorAgreement');
--	END
GO

GO
PRINT N'Checking existing data against newly created constraints';


GO
USE [$(DatabaseName)];


GO
ALTER TABLE [dbo].[ExamEvent] WITH CHECK CHECK CONSTRAINT [FK_ExamEvent_Application];


GO
PRINT N'Update complete.';


GO
