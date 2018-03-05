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
PRINT N'Creating [dbo].[AdminApplicationDocumentNotes]...';


GO
CREATE TABLE [dbo].[AdminApplicationDocumentNotes] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [NoteAddedDate] DATETIME         NULL,
    [Note]          NVARCHAR (1000)  NULL,
    [ApplicationId] UNIQUEIDENTIFIER NOT NULL,
    [DocumentID]    UNIQUEIDENTIFIER NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Creating unnamed constraint on [dbo].[AdminApplicationDocumentNotes]...';


GO
ALTER TABLE [dbo].[AdminApplicationDocumentNotes]
    ADD DEFAULT NEWID() FOR [Id];


GO
PRINT N'Creating [dbo].[FK_AdminApplicationDocumentNotes_Application]...';


GO
ALTER TABLE [dbo].[AdminApplicationDocumentNotes] WITH NOCHECK
    ADD CONSTRAINT [FK_AdminApplicationDocumentNotes_Application] FOREIGN KEY ([ApplicationId]) REFERENCES [dbo].[Application] ([Id]);


GO
PRINT N'Creating [dbo].[FK_AdminApplicationDocumentNotes_Document]...';


GO
ALTER TABLE [dbo].[AdminApplicationDocumentNotes] WITH NOCHECK
    ADD CONSTRAINT [FK_AdminApplicationDocumentNotes_Document] FOREIGN KEY ([DocumentID]) REFERENCES [dbo].[Document] ([DocumentID]);


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
ALTER TABLE [dbo].[AdminApplicationDocumentNotes] WITH CHECK CHECK CONSTRAINT [FK_AdminApplicationDocumentNotes_Application];

ALTER TABLE [dbo].[AdminApplicationDocumentNotes] WITH CHECK CHECK CONSTRAINT [FK_AdminApplicationDocumentNotes_Document];


GO
PRINT N'Update complete.';


GO
