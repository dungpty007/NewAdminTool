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