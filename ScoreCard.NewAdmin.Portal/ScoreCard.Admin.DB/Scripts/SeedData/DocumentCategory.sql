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



-- update document category to change follow feedback: 373
UPDATE [dbo].[DocumentCategory]
   SET  [NeedsExpiryDate] = 1
      ,[NeedsStartDate] = 0
      ,[YearsRequired] = null 
	  ,[Note] ='Please record expiry date under date column'
 WHERE DocumentCategoryId ='5fd76eaf-1437-4da2-8c38-a15e1b2229a6'
GO

--Qualifications--
IF NOT EXISTS (SELECT * FROM [dbo].[DocumentCategory] WHERE [DocumentCategoryId] = N'8f5d6eea-e4e3-4406-92d1-7564f59ac658')
BEGIN
 INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [ApplicationStage], [TrackExpiry], [Mandatory], [NeedsExpiryDate], [NeedsStartDate], [YearsRequired], [Note], [Type]) 
 VALUES (N'8f5d6eea-e4e3-4406-92d1-7564f59ac658', N'Qualifications', N'1', NULL, 0, 0, 0, NULL, NULL, 1)
END
ELSE
BEGIN
  	UPDATE [dbo].[DocumentCategory] 
	SET [Name] = N'Qualifications', [ApplicationStage] = N'1', [TrackExpiry] = NULL , [Mandatory] = 0, [NeedsExpiryDate] = 0, [NeedsStartDate] = 0, [YearsRequired] = NULL, [Note] = NULL,  [Type] = 1
	WHERE DocumentCategoryId =N'8f5d6eea-e4e3-4406-92d1-7564f59ac658'
END
GO

--Documented Experience
IF NOT EXISTS (SELECT * FROM [dbo].[DocumentCategory] WHERE [DocumentCategoryId] = N'7cc45828-aaef-400c-97fc-8b29e40a1afb')
BEGIN
INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [ApplicationStage], [TrackExpiry], [Mandatory], [NeedsExpiryDate], [NeedsStartDate], [YearsRequired], [Note], [Type]) 
VALUES (N'7cc45828-aaef-400c-97fc-8b29e40a1afb', N'Documented Experience', N'1', NULL, 1, 0, 0, NULL, NULL, 1)

END
ELSE
BEGIN
  	UPDATE [dbo].[DocumentCategory] 
	SET [Name] = N'Documented Experience', [ApplicationStage] = N'1', [TrackExpiry] = NULL , [Mandatory] = 1, [NeedsExpiryDate] = 0, [NeedsStartDate] = 0, [YearsRequired] = NULL, [Note] = NULL,  [Type] = 1
	WHERE DocumentCategoryId =N'7cc45828-aaef-400c-97fc-8b29e40a1afb'
END
GO

--CV/Resume
IF NOT EXISTS (SELECT * FROM [dbo].[DocumentCategory] WHERE [DocumentCategoryId] = N'cb9e01a9-5964-47cd-aeed-6b1e04733c65')
BEGIN
INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [ApplicationStage], [TrackExpiry], [Mandatory], [NeedsExpiryDate], [NeedsStartDate], [YearsRequired], [Note], [Type]) 
VALUES (N'cb9e01a9-5964-47cd-aeed-6b1e04733c65', N'CV/Resume', N'1', NULL, 1, 0, 0, NULL, NULL, 1)

END
ELSE
BEGIN
  	UPDATE [dbo].[DocumentCategory] 
	SET [Name] = N'CV/Resume', [ApplicationStage] = N'1', [TrackExpiry] = NULL , [Mandatory] = 1, [NeedsExpiryDate] = 0, [NeedsStartDate] = 0, [YearsRequired] = NULL, [Note] = NULL,  [Type] = 1
	WHERE DocumentCategoryId =N'cb9e01a9-5964-47cd-aeed-6b1e04733c65'
END
GO

--Professional indemnity Ins
IF NOT EXISTS (SELECT * FROM [dbo].[DocumentCategory] WHERE [DocumentCategoryId] = N'f28c2133-3ed2-430f-b070-515bfce61a11')
BEGIN

INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [ApplicationStage], [TrackExpiry], [Mandatory], [NeedsExpiryDate], [NeedsStartDate], [YearsRequired], [Note], [Type]) 
VALUES (N'f28c2133-3ed2-430f-b070-515bfce61a11', N'Professional indemnity Ins', N'3', NULL, 1, 1, 0, NULL, N'Please record expiry date under date column', 1)

END
ELSE
BEGIN
  	UPDATE [dbo].[DocumentCategory] 
	SET [Name] = N'Professional indemnity Ins', [ApplicationStage] = N'3', [TrackExpiry] = NULL , [Mandatory] = 1, [NeedsExpiryDate] = 1, [NeedsStartDate] = 0, [YearsRequired] = NULL, [Note] = N'Please record expiry date under date column',  [Type] = 1
	WHERE DocumentCategoryId =N'f28c2133-3ed2-430f-b070-515bfce61a11'
END
GO

--Safe Work Method Statement
IF NOT EXISTS (SELECT * FROM [dbo].[DocumentCategory] WHERE [DocumentCategoryId] = N'c9be4035-ea9e-45bb-a74b-581d8aecf7ee')
BEGIN

INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [ApplicationStage], [TrackExpiry], [Mandatory], [NeedsExpiryDate], [NeedsStartDate], [YearsRequired], [Note], [Type])
VALUES (N'c9be4035-ea9e-45bb-a74b-581d8aecf7ee', N'Safe Work Method Statement', N'3', NULL, 1, 0, 0, NULL, NULL, 1)

END
ELSE
BEGIN
  	UPDATE [dbo].[DocumentCategory] 
	SET [Name] = N'Safe Work Method Statement', [ApplicationStage] = N'3', [TrackExpiry] = NULL , [Mandatory] = 1, [NeedsExpiryDate] = 0, [NeedsStartDate] = 0, [YearsRequired] = NULL, [Note] = NULL,  [Type] = 1
	WHERE DocumentCategoryId =N'c9be4035-ea9e-45bb-a74b-581d8aecf7ee'
END
GO

--OHS
IF NOT EXISTS (SELECT * FROM [dbo].[DocumentCategory] WHERE [DocumentCategoryId] = N'1e5d96f9-0217-410d-bc19-053932e22d77')
BEGIN 
INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [ApplicationStage], [TrackExpiry], [Mandatory], [NeedsExpiryDate], [NeedsStartDate], [YearsRequired], [Note], [Type]) 
VALUES (N'1e5d96f9-0217-410d-bc19-053932e22d77', N'OHS', N'3', NULL, 1, 0, 1, 5, N'Please record award date under date column', 1)

END
ELSE
BEGIN
  	UPDATE [dbo].[DocumentCategory] 
	SET [Name] = N'OHS', [ApplicationStage] = N'3', [TrackExpiry] = NULL , [Mandatory] = 1, [NeedsExpiryDate] = 0, [NeedsStartDate] = 1, [YearsRequired] = 5, [Note] = N'Please record award date under date column',  [Type] = 1
	WHERE DocumentCategoryId =N'1e5d96f9-0217-410d-bc19-053932e22d77'
END
GO

--Brand Materials for Approval
IF NOT EXISTS (SELECT * FROM [dbo].[DocumentCategory] WHERE [DocumentCategoryId] = N'd869cfbb-cf7e-4f30-9d15-804c0358ecad')
BEGIN 
INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [ApplicationStage], [TrackExpiry], [Mandatory], [NeedsExpiryDate], [NeedsStartDate], [YearsRequired], [Note], [Type]) 
VALUES (N'd869cfbb-cf7e-4f30-9d15-804c0358ecad', N'Brand Materials for Approval', N'0', NULL, 0, 0, 0, NULL, NULL, 2)

END
ELSE
BEGIN
  	UPDATE [dbo].[DocumentCategory] 
	SET [Name] = N'Brand Materials for Approval', [ApplicationStage] = N'3', [TrackExpiry] = NULL , [Mandatory] = 0, [NeedsExpiryDate] = 0, [NeedsStartDate] = 0, [YearsRequired] = null, [Note] = null,  [Type] = 2
	WHERE DocumentCategoryId =N'd869cfbb-cf7e-4f30-9d15-804c0358ecad'
END
GO

--Working with Children Card
IF NOT EXISTS (SELECT * FROM [dbo].[DocumentCategory] WHERE [DocumentCategoryId] = N'5fd76eaf-1437-4da2-8c38-a15e1b2229a6')
BEGIN 
INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [ApplicationStage], [TrackExpiry], [Mandatory], [NeedsExpiryDate], [NeedsStartDate], [YearsRequired], [Note], [Type]) 
VALUES (N'5fd76eaf-1437-4da2-8c38-a15e1b2229a6', N'Working with Children Card', N'3', NULL, 1, 1, 0, null, N'Please record expiry date under date column', 1)

END
ELSE
BEGIN
  	UPDATE [dbo].[DocumentCategory] 
	SET [Name] = N'Working with Children Card', [ApplicationStage] = N'3', [TrackExpiry] = NULL , [Mandatory] = 1, [NeedsExpiryDate] = 1, [NeedsStartDate] = 0, [YearsRequired] = null, [Note] =  N'Please record expiry date under date column',  [Type] = 1
	WHERE DocumentCategoryId =N'5fd76eaf-1437-4da2-8c38-a15e1b2229a6'
END
GO

--Assessor Agreement
IF NOT EXISTS (SELECT * FROM [dbo].[DocumentCategory] WHERE [DocumentCategoryId] = N'a61f5303-0c3d-49a8-b885-b2d73fb2a9e6')
BEGIN 
INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [ApplicationStage], [TrackExpiry], [Mandatory], [NeedsExpiryDate], [NeedsStartDate], [YearsRequired], [Note], [Type]) 
VALUES (N'a61f5303-0c3d-49a8-b885-b2d73fb2a9e6', N'Assessor Agreement', N'5', NULL, 1, 1, 0, NULL, N'Please record signed date under date column', 1)

END
ELSE
BEGIN
  	UPDATE [dbo].[DocumentCategory] 
	SET [Name] = N'Assessor Agreement', [ApplicationStage] = N'5', [TrackExpiry] = NULL , [Mandatory] = 1, [NeedsExpiryDate] = 1, [NeedsStartDate] = 0, [YearsRequired] = null, [Note] =  N'Please record signed date under date column',  [Type] = 1
	WHERE DocumentCategoryId =N'a61f5303-0c3d-49a8-b885-b2d73fb2a9e6'
END
GO

--Agreement
IF NOT EXISTS (SELECT * FROM [dbo].[DocumentCategory] WHERE [DocumentCategoryId] = N'fd47d6cc-20e0-48dc-b7f0-b6161495a24c')
BEGIN 
INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [ApplicationStage], [TrackExpiry], [Mandatory], [NeedsExpiryDate], [NeedsStartDate], [YearsRequired], [Note], [Type]) 
VALUES (N'fd47d6cc-20e0-48dc-b7f0-b6161495a24c', N'Agreement', N'0', NULL, 0, 0, 0, NULL, NULL, 2)

END
ELSE
BEGIN
  	UPDATE [dbo].[DocumentCategory] 
	SET [Name] = N'Agreement', [ApplicationStage] = N'0', [TrackExpiry] = NULL , [Mandatory] = 0, [NeedsExpiryDate] = 0, [NeedsStartDate] = 0, [YearsRequired] = null, [Note] =  null,  [Type] = 2
	WHERE DocumentCategoryId =N'fd47d6cc-20e0-48dc-b7f0-b6161495a24c'
END
GO

--Public Liability Ins
IF NOT EXISTS (SELECT * FROM [dbo].[DocumentCategory] WHERE [DocumentCategoryId] = N'548e3f25-49b1-46bc-b347-e97198ce1870')
BEGIN 
INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [ApplicationStage], [TrackExpiry], [Mandatory], [NeedsExpiryDate], [NeedsStartDate], [YearsRequired], [Note], [Type]) 
VALUES (N'548e3f25-49b1-46bc-b347-e97198ce1870', N'Public Liability Ins', N'3', NULL, 1, 1, 0, NULL, N'Please record expiry date under date column', 1)

END
ELSE
BEGIN
  	UPDATE [dbo].[DocumentCategory] 
	SET [Name] = N'Public Liability Ins', [ApplicationStage] = N'3', [TrackExpiry] = NULL , [Mandatory] = 1, [NeedsExpiryDate] = 1, [NeedsStartDate] = 0, [YearsRequired] = null, [Note] =   N'Please record expiry date under date column',  [Type] = 1
	WHERE DocumentCategoryId =N'548e3f25-49b1-46bc-b347-e97198ce1870'
END
GO

--Insurance
IF NOT EXISTS (SELECT * FROM [dbo].[DocumentCategory] WHERE [DocumentCategoryId] = N'efc1076f-4dba-46ca-816b-f36ef78d54df')
BEGIN 
INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [ApplicationStage], [TrackExpiry], [Mandatory], [NeedsExpiryDate], [NeedsStartDate], [YearsRequired], [Note], [Type]) 
VALUES (N'efc1076f-4dba-46ca-816b-f36ef78d54df', N'Insurance', N'0', NULL, 0, 0, 0, NULL, NULL, 2)

END
ELSE
BEGIN
  	UPDATE [dbo].[DocumentCategory] 
	SET [Name] = N'Insurance', [ApplicationStage] = N'0', [TrackExpiry] = NULL , [Mandatory] = 0, [NeedsExpiryDate] = 0, [NeedsStartDate] = 0, [YearsRequired] = null, [Note] =   null,  [Type] = 2
	WHERE DocumentCategoryId =N'efc1076f-4dba-46ca-816b-f36ef78d54df'
END
GO

--Exam Documents
IF NOT EXISTS (SELECT * FROM [dbo].[DocumentCategory] WHERE [DocumentCategoryId] = N'694996b4-fe6c-4cd6-a031-25782b0a9064')
BEGIN 
INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [ApplicationStage], [TrackExpiry], [Mandatory], [NeedsExpiryDate], [NeedsStartDate], [YearsRequired], [Note], [Type]) 
VALUES (N'694996b4-fe6c-4cd6-a031-25782b0a9064', N'Exam Documents', N'4', NULL, 0, 0, 0, NULL, N'Please include exam related documents', 1)

END
ELSE
BEGIN
  	UPDATE [dbo].[DocumentCategory] 
	SET [Name] = N'Exam Documents', [ApplicationStage] = N'4', [TrackExpiry] = NULL , [Mandatory] = 0, [NeedsExpiryDate] = 0, [NeedsStartDate] = 0, [YearsRequired] = null, [Note] =   N'Please include exam related documents',  [Type] = 1
	WHERE DocumentCategoryId =N'694996b4-fe6c-4cd6-a031-25782b0a9064'
END
GO

--Document for Assessor
IF NOT EXISTS (SELECT * FROM [dbo].[DocumentCategory] WHERE [DocumentCategoryId] = N'EEB8774B-37FD-4693-AFF0-30BDECD8A19F')
BEGIN 

INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [ApplicationStage], [TrackExpiry], [Mandatory], [NeedsExpiryDate], [NeedsStartDate], [YearsRequired], [Note], [Type]) 
VALUES (N'EEB8774B-37FD-4693-AFF0-30BDECD8A19F', N'Document for Assessor', N'6', NULL, 0, 0, 0, NULL, NULL, 5)

END
ELSE
BEGIN
  	UPDATE [dbo].[DocumentCategory] 
	SET [Name] = N'Document for Assessor', [ApplicationStage] = N'6', [TrackExpiry] = NULL , [Mandatory] = 0, [NeedsExpiryDate] = 0, [NeedsStartDate] = 0, [YearsRequired] = null, [Note] = null,  [Type] = 5
	WHERE DocumentCategoryId =N'EEB8774B-37FD-4693-AFF0-30BDECD8A19F'
END
GO

--Document Library
IF NOT EXISTS (SELECT * FROM [dbo].[DocumentCategory] WHERE [DocumentCategoryId] = N'e35ec033-6fff-4062-86b0-265b6ee6237e')
BEGIN 

INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [ApplicationStage], [TrackExpiry], [Mandatory], [NeedsExpiryDate], [NeedsStartDate], [YearsRequired], [Note], [Type]) 
VALUES (N'e35ec033-6fff-4062-86b0-265b6ee6237e', N'Document Library', N'6', NULL, 0, 0, 0, NULL, NULL, 3)

END
ELSE
BEGIN
  	UPDATE [dbo].[DocumentCategory] 
	SET [Name] = N'Document Library', [ApplicationStage] = N'6', [TrackExpiry] = NULL , [Mandatory] = 0, [NeedsExpiryDate] = 0, [NeedsStartDate] = 0, [YearsRequired] = null, [Note] = null,  [Type] = 3
	WHERE DocumentCategoryId =N'e35ec033-6fff-4062-86b0-265b6ee6237e'
END
GO 

--Document for Intermediary assessor
IF NOT EXISTS (SELECT * FROM [dbo].[DocumentCategory] WHERE [DocumentCategoryId] = N'27AD0D89-0B15-4691-9CA0-3AF0558B61A6')
BEGIN 

INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [ApplicationStage], [TrackExpiry], [Mandatory], [NeedsExpiryDate], [NeedsStartDate], [YearsRequired], [Note], [Type]) 
VALUES (N'27AD0D89-0B15-4691-9CA0-3AF0558B61A6', N'Document for Intermediary Assessor', N'0', NULL, 0, 0, 0, NULL, NULL, 4)

END
ELSE
BEGIN
  	UPDATE [dbo].[DocumentCategory] 
	SET [Name] = N'Document for Intermediary Assessor', [ApplicationStage] = N'0', [TrackExpiry] = NULL , [Mandatory] = 0, [NeedsExpiryDate] = 0, [NeedsStartDate] = 0, [YearsRequired] = null, [Note] = null,  [Type] = 4
	WHERE DocumentCategoryId =N'27AD0D89-0B15-4691-9CA0-3AF0558B61A6'
END
GO

--Document for Intermediary
IF NOT EXISTS (SELECT * FROM [dbo].[DocumentCategory] WHERE [DocumentCategoryId] = N'1451EDC6-424D-414A-A538-77F4C2B8508B')
BEGIN 

INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [ApplicationStage], [TrackExpiry], [Mandatory], [NeedsExpiryDate], [NeedsStartDate], [YearsRequired], [Note], [Type]) 
VALUES (N'1451EDC6-424D-414A-A538-77F4C2B8508B', N'Document for Intermediary', N'0', NULL, 0, 0, 0, NULL, NULL, 6)

END
ELSE
BEGIN
  	UPDATE [dbo].[DocumentCategory] 
	SET [Name] = N'Document for Intermediary', [ApplicationStage] = N'0', [TrackExpiry] = NULL , [Mandatory] = 0, [NeedsExpiryDate] = 0, [NeedsStartDate] = 0, [YearsRequired] = null, [Note] = null,  [Type] = 6
	WHERE DocumentCategoryId =N'1451EDC6-424D-414A-A538-77F4C2B8508B'
END
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

IF NOT EXISTS (SELECT * FROM [dbo].[RiskPrincipal] WHERE [Id] = N'EA30BCF1-21B2-4F09-BD89-118B549F4BEE')
BEGIN
 INSERT [dbo].[RiskPrincipal] ([Id], [Pricipal]) VALUES (N'EA30BCF1-21B2-4F09-BD89-118B549F4BEE', N'Excellent customer experience: assessors must demonstrate strong customer relationship and engagement approach and skills, delivering a positive experience for the consumer.')
END
ELSE
BEGIN
  	UPDATE [dbo].[RiskPrincipal] 
	SET [Pricipal] =  N'Excellent customer experience: assessors must demonstrate strong customer relationship and engagement approach and skills, delivering a positive experience for the consumer.'
	WHERE [Id] =N'EA30BCF1-21B2-4F09-BD89-118B549F4BEE'
END
GO

IF NOT EXISTS (SELECT * FROM [dbo].[RiskPrincipal] WHERE [Id] = N'4CEE1156-1E85-4D71-9694-1AC837713F17')
BEGIN
 INSERT [dbo].[RiskPrincipal] ([Id], [Pricipal]) VALUES (N'4CEE1156-1E85-4D71-9694-1AC837713F17',N'Robust assessment approach: assessors must have a strong ability to identify home energy efficiency features in the field, and accurate data entry skills, to ensure assessments accurately reflect home performance.') 
END
ELSE
BEGIN
  	UPDATE [dbo].[RiskPrincipal] 
	SET [Pricipal] =  N'Robust assessment approach: assessors must have a strong ability to identify home energy efficiency features in the field, and accurate data entry skills, to ensure assessments accurately reflect home performance.'
	WHERE [Id] =N'4CEE1156-1E85-4D71-9694-1AC837713F17'
END
GO


IF NOT EXISTS (SELECT * FROM [dbo].[RiskPrincipal] WHERE [Id] = N'554BFF9B-21C2-4F5F-A080-4D31BB6EBD11')
BEGIN
 INSERT [dbo].[RiskPrincipal] ([Id], [Pricipal]) VALUES (N'554BFF9B-21C2-4F5F-A080-4D31BB6EBD11',N'Consumer focused energy efficiency upgrades advice: Assessors must have the skills to assess and present appropriate upgrades options, considering the needs of the household.')
END
ELSE
BEGIN
  	UPDATE [dbo].[RiskPrincipal] 
	SET [Pricipal] =  N'Consumer focused energy efficiency upgrades advice: Assessors must have the skills to assess and present appropriate upgrades options, considering the needs of the household.'
	WHERE [Id] =N'554BFF9B-21C2-4F5F-A080-4D31BB6EBD11'
END
GO

IF NOT EXISTS (SELECT * FROM [dbo].[RiskPrincipal] WHERE [Id] = N'9630868E-8E76-4725-A662-7AF814694E4F')
BEGIN
  INSERT [dbo].[RiskPrincipal] ([Id], [Pricipal]) VALUES (N'9630868E-8E76-4725-A662-7AF814694E4F',N'Prioritise safety and wellbeing: Assessors must have the skills to protect themselves and others whilst working.') 
END
ELSE
BEGIN
  	UPDATE [dbo].[RiskPrincipal] 
	SET [Pricipal] =  N'Prioritise safety and wellbeing: Assessors must have the skills to protect themselves and others whilst working.'
	WHERE [Id] =N'9630868E-8E76-4725-A662-7AF814694E4F'
END
GO

IF NOT EXISTS (SELECT * FROM [dbo].[RiskPrincipal] WHERE [Id] = N'F2B07999-28D1-407C-9922-99BC7E8DEF9A')
BEGIN
  INSERT [dbo].[RiskPrincipal] ([Id], [Pricipal]) VALUES (N'F2B07999-28D1-407C-9922-99BC7E8DEF9A',N'Robust administrative process: Assessors are provided with Scorecard training and other support services, and must comply with administrative requirements, including audits.')
END
ELSE
BEGIN
  	UPDATE [dbo].[RiskPrincipal] 
	SET [Pricipal] =  N'Robust administrative process: Assessors are provided with Scorecard training and other support services, and must comply with administrative requirements, including audits.'
	WHERE [Id] =N'F2B07999-28D1-407C-9922-99BC7E8DEF9A'
END
GO

IF NOT EXISTS (SELECT * FROM [dbo].[RiskPrincipal] WHERE [Id] = N'FD48D56D-B958-41FC-BE54-AD837CABCD94')
BEGIN
 
INSERT [dbo].[RiskPrincipal] ([Id], [Pricipal]) VALUES (N'FD48D56D-B958-41FC-BE54-AD837CABCD94',N'Consultation and continuous improvement: Assessors are invited to provide feedback to continuously improve the program.') 
END
ELSE
BEGIN
  	UPDATE [dbo].[RiskPrincipal] 
	SET [Pricipal] =  N'Consultation and continuous improvement: Assessors are invited to provide feedback to continuously improve the program.'
	WHERE [Id] =N'FD48D56D-B958-41FC-BE54-AD837CABCD94'
END
GO 

if (select count(1) from [dbo].[TrainingLocation]) = 0
	BEGIN
		
	INSERT INTO [dbo].[TrainingLocation] ([LocationId] ,[Name] ) VALUES ('6a36efa0-9931-4827-a40c-ad5d7678e5ab' ,'Location 1' );
	 
	END