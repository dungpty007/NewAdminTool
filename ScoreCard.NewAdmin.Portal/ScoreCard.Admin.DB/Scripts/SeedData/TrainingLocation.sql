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
if (select count(1) from [dbo].[TrainingLocation]) = 0
	BEGIN
		
	INSERT INTO [dbo].[TrainingLocation] ([LocationId] ,[Name] ) VALUES ('6a36efa0-9931-4827-a40c-ad5d7678e5ab' ,'Location 1' );
	 
	END