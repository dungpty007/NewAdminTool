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

 
IF NOT EXISTS (SELECT * FROM [dbo].[RegionsLGA] WHERE [Id] = N'AA0B2A22-B4D6-4963-80AA-CCE82C228BDD') BEGIN 
	INSERT INTO [dbo].[RegionsLGA] ([Id] ,[Region] ,[LGA] ,[Location1] ,[Location2] ,[Location3]) VALUES (N'AA0B2A22-B4D6-4963-80AA-CCE82C228BDD' ,N'All of Victoria ',N'Contains all LGAs' ,N'' ,N'' ,N'') 
END ELSE BEGIN 
	UPDATE [dbo].[RegionsLGA] SET [Region] = N'All of Victoria', [LGA] = N'Contains all LGAs', [Location1] = N'' , [Location2] = N'', [Location3] = N'' WHERE [Id] =N'AA0B2A22-B4D6-4963-80AA-CCE82C228BDD' 
END 
GO
 
 
IF NOT EXISTS (SELECT * FROM [dbo].[RegionsLGA] WHERE [Id] = N'8DFA33F8-D8E8-426D-91C1-9082FA4ECCD2') BEGIN 
   INSERT INTO [dbo].[RegionsLGA] ([Id] ,[Region] ,[LGA] ,[Location1] ,[Location2] ,[Location3]) 
   VALUES (N'8DFA33F8-D8E8-426D-91C1-9082FA4ECCD2' ,N'East Gippsland ',N'Shire of East Gippsland' ,N'' ,N'' ,N'') 
END ELSE BEGIN 
      UPDATE [dbo].[RegionsLGA] 
	  SET [Region] = N'East Gippsland', [LGA] = N'Shire of East Gippsland', [Location1] = N'' , [Location2] = N'', [Location3] = N''
	  WHERE [Id] =N'8DFA33F8-D8E8-426D-91C1-9082FA4ECCD2' END 
GO


IF NOT EXISTS (SELECT * FROM [dbo].[RegionsLGA] WHERE [Id] = N'CD244C97-38FC-4C79-AEE1-0F4D05DA3413') BEGIN 
	INSERT INTO [dbo].[RegionsLGA] ([Id] ,[Region] ,[LGA] ,[Location1] ,[Location2] ,[Location3]) 
	VALUES (N'CD244C97-38FC-4C79-AEE1-0F4D05DA3413' ,N'West Gippsland ',N'Shire of Wellington' ,N'City of Latrobe' ,N'Shire of Baw Baw' ,N'South Gippsland Shire') 
END ELSE BEGIN 
	UPDATE [dbo].[RegionsLGA] 
	SET [Region] = N'West Gippsland', [LGA] = N'Shire of Wellington', [Location1] = N'City of Latrobe' , [Location2] = N'Shire of Baw Baw', [Location3] = N'South Gippsland Shire'
	WHERE [Id] =N'CD244C97-38FC-4C79-AEE1-0F4D05DA3413' END 
GO
 
IF NOT EXISTS (SELECT * FROM [dbo].[RegionsLGA] WHERE [Id] = N'664958D2-891A-414E-BD3A-15CF7E999EFB') BEGIN 
	INSERT INTO [dbo].[RegionsLGA] ([Id] ,[Region] ,[LGA] ,[Location1] ,[Location2] ,[Location3]) 
	VALUES (N'664958D2-891A-414E-BD3A-15CF7E999EFB' ,N'West Gippsland',N'Bass Coast Shire' ,N'' ,N'' ,N'') 
END ELSE BEGIN 
	UPDATE [dbo].[RegionsLGA] SET [Region] = N'West Gippsland', [LGA] = N'Bass Coast Shire', [Location1] = N'' , [Location2] = N'', [Location3] = N''
	WHERE [Id] =N'664958D2-891A-414E-BD3A-15CF7E999EFB' END 
GO

 
IF NOT EXISTS (SELECT * FROM [dbo].[RegionsLGA] WHERE [Id] = N'9ADDE865-BD06-4C9E-951D-80DA49CF4313') BEGIN 
	INSERT INTO [dbo].[RegionsLGA] ([Id] ,[Region] ,[LGA] ,[Location1] ,[Location2] ,[Location3]) 
	VALUES (N'9ADDE865-BD06-4C9E-951D-80DA49CF4313' ,N'North East Victoria ',N'Shire of Towong' ,N'Alpine Shire' ,N'Rural City of Wangaratta' ,N'Shire of Indigo') 
END ELSE BEGIN 
	UPDATE [dbo].[RegionsLGA] 
	SET [Region] = N'North East Victoria', [LGA] = N'Shire of Towong', [Location1] = N'Alpine Shire' , [Location2] = N'Rural City of Wangaratta', [Location3] = N'Shire of Indigo'
	WHERE [Id] =N'9ADDE865-BD06-4C9E-951D-80DA49CF4313' END 
GO
 
IF NOT EXISTS (SELECT * FROM [dbo].[RegionsLGA] WHERE [Id] = N'722F4E46-D9A3-41F3-9167-7DF3B7624CB6') BEGIN 
	INSERT INTO [dbo].[RegionsLGA] ([Id] ,[Region] ,[LGA] ,[Location1] ,[Location2] ,[Location3]) 
	VALUES (N'722F4E46-D9A3-41F3-9167-7DF3B7624CB6' ,N'Shire of Towong',N'City of Wodonga' ,N'Rural City of Benalla' ,N'Shire of Mansfield' ,N'Shire of Moira') 
END ELSE BEGIN 
	UPDATE [dbo].[RegionsLGA] SET [Region] = N'Shire of Towong', [LGA] = N'City of Wodonga', [Location1] = N'Rural City of Benalla' , [Location2] = N'Shire of Mansfield', [Location3] = N'Shire of Moira'
	WHERE [Id] =N'722F4E46-D9A3-41F3-9167-7DF3B7624CB6' END 
GO
 
IF NOT EXISTS (SELECT * FROM [dbo].[RegionsLGA] WHERE [Id] = N'DE3FA2C8-C022-4E6D-9DCB-7FEA7DA33968') BEGIN 
	INSERT INTO [dbo].[RegionsLGA] ([Id] ,[Region] ,[LGA] ,[Location1] ,[Location2] ,[Location3]) 
	VALUES (N'DE3FA2C8-C022-4E6D-9DCB-7FEA7DA33968' ,N'Shire of Towong',N'Shire of Murrindindi' ,N'' ,N'' ,N'') 
END ELSE BEGIN 
	UPDATE [dbo].[RegionsLGA] 
	SET [Region] = N'Shire of Towong', [LGA] = N'Shire of Murrindindi', [Location1] = N'' , [Location2] = N'', [Location3] = N''
	WHERE [Id] =N'DE3FA2C8-C022-4E6D-9DCB-7FEA7DA33968' END 
GO

 
IF NOT EXISTS (SELECT * FROM [dbo].[RegionsLGA] WHERE [Id] = N'270F4B8E-A518-4354-8BDE-288C5EC9A9FF') BEGIN 
	INSERT INTO [dbo].[RegionsLGA] ([Id] ,[Region] ,[LGA] ,[Location1] ,[Location2] ,[Location3]) 
	VALUES (N'270F4B8E-A518-4354-8BDE-288C5EC9A9FF' ,N'North Central Victoria',N'City of Greater Shepparton' ,N'Shire of Strathbogie' ,N'Shire of Mitchell' ,N'Shire of Macedon Ranges') 
END ELSE BEGIN 
	UPDATE [dbo].[RegionsLGA] 
	SET [Region] = N'North Central Victoria', [LGA] = N'City of Greater Shepparton', [Location1] = N'Shire of Strathbogie' , [Location2] = N'Shire of Mitchell', [Location3] = N'Shire of Macedon Ranges'
	WHERE [Id] =N'270F4B8E-A518-4354-8BDE-288C5EC9A9FF' END 
GO
 
IF NOT EXISTS (SELECT * FROM [dbo].[RegionsLGA] WHERE [Id] = N'87EF15BE-53E0-41A1-8215-C7157EF36EC3') BEGIN 
	INSERT INTO [dbo].[RegionsLGA] ([Id] ,[Region] ,[LGA] ,[Location1] ,[Location2] ,[Location3]) 
	VALUES (N'87EF15BE-53E0-41A1-8215-C7157EF36EC3' ,N'North Central Victoria',N'Shire of Campaspe' ,N'Shire of Loddon' ,N'City of Greater Bendigo' ,N'Shire of Mount Alexander') 
END ELSE BEGIN 
	UPDATE [dbo].[RegionsLGA] 
	SET [Region] = N'North Central Victoria', [LGA] = N'Shire of Campaspe', [Location1] = N'Shire of Loddon' , [Location2] = N'City of Greater Bendigo', [Location3] = N'Shire of Mount Alexander'
	WHERE [Id] =N'87EF15BE-53E0-41A1-8215-C7157EF36EC3' END 
GO
 
IF NOT EXISTS (SELECT * FROM [dbo].[RegionsLGA] WHERE [Id] = N'51146202-8F5F-40B2-B0DB-368DAF0F282A') BEGIN 
	INSERT INTO [dbo].[RegionsLGA] ([Id] ,[Region] ,[LGA] ,[Location1] ,[Location2] ,[Location3]) 
	VALUES (N'51146202-8F5F-40B2-B0DB-368DAF0F282A' ,N'North Central Victoria',N'Shire of Central Goldfields' ,N'Shire of Hepburn' ,N'Shire of Pyrenees' ,N'City of Ballarat') 
END ELSE BEGIN 
	UPDATE [dbo].[RegionsLGA] 
	SET [Region] = N'North Central Victoria', [LGA] = N'Shire of Central Goldfields', [Location1] = N'Shire of Hepburn' , [Location2] = N'Shire of Pyrenees', [Location3] = N'City of Ballarat'
	WHERE [Id] =N'51146202-8F5F-40B2-B0DB-368DAF0F282A' END 
GO
 
IF NOT EXISTS (SELECT * FROM [dbo].[RegionsLGA] WHERE [Id] = N'E3E2B228-692C-4B13-81FC-D3E0C15894E1') BEGIN 
	INSERT INTO [dbo].[RegionsLGA] ([Id] ,[Region] ,[LGA] ,[Location1] ,[Location2] ,[Location3]) 
	VALUES (N'E3E2B228-692C-4B13-81FC-D3E0C15894E1' ,N'North West Victoria ',N'Rural City of Mildura' ,N'Rural City of Swan Hill' ,N'Shire of Gannawarra' ,N'Shire of Buloke') 
END ELSE BEGIN 
	UPDATE [dbo].[RegionsLGA] SET [Region] = N'North West Victoria', [LGA] = N'Rural City of Mildura', [Location1] = N'Rural City of Swan Hill' , [Location2] = N'Shire of Gannawarra', [Location3] = N'Shire of Buloke'
	WHERE [Id] =N'8f5d6eea-e4e3-4406-92d1-7564f59ac658' END 
GO
 
IF NOT EXISTS (SELECT * FROM [dbo].[RegionsLGA] WHERE [Id] = N'081EF0B6-4D5C-4665-9333-9288077A0093') BEGIN 
INSERT INTO [dbo].[RegionsLGA] ([Id] ,[Region] ,[LGA] ,[Location1] ,[Location2] ,[Location3]) VALUES (N'081EF0B6-4D5C-4665-9333-9288077A0093' ,N'Mid West Victoria ',N'Shire of Northern Grampians' ,N'Shire of Yarriambiack' ,N'Shire of Hindmarsh' ,N'Rural City of Horsham') 
END ELSE BEGIN 
UPDATE [dbo].[RegionsLGA] SET [Region] = N'Mid West Victoria', [LGA] = N'Shire of Northern Grampians', [Location1] = N'Shire of Yarriambiack' , [Location2] = N'Shire of Hindmarsh', [Location3] = N'Rural City of Horsham'WHERE [Id] =N'081EF0B6-4D5C-4665-9333-9288077A0093' END 
GO
 
IF NOT EXISTS (SELECT * FROM [dbo].[RegionsLGA] WHERE [Id] = N'E5B78BDE-9F41-4BD7-B11E-187383DC3216') BEGIN 
	INSERT INTO [dbo].[RegionsLGA] ([Id] ,[Region] ,[LGA] ,[Location1] ,[Location2] ,[Location3]) 
	VALUES (N'E5B78BDE-9F41-4BD7-B11E-187383DC3216' ,N'Mid West Victoria',N'Shire of West Wimmera' ,N'' ,N'' ,N'') 
END ELSE BEGIN 
	UPDATE [dbo].[RegionsLGA] SET [Region] = N'Mid West Victoria', [LGA] = N'Shire of West Wimmera', [Location1] = N'' , [Location2] = N'', [Location3] = N''
	WHERE [Id] =N'E5B78BDE-9F41-4BD7-B11E-187383DC3216' END 
GO
 
IF NOT EXISTS (SELECT * FROM [dbo].[RegionsLGA] WHERE [Id] = N'F397BB09-77E7-48D8-8CB2-84A9383B3022') BEGIN 
	INSERT INTO [dbo].[RegionsLGA] ([Id] ,[Region] ,[LGA] ,[Location1] ,[Location2] ,[Location3]) 
	VALUES (N'F397BB09-77E7-48D8-8CB2-84A9383B3022' ,N'South West Victoria',N'Hire of Southern Grampians' ,N'Rural City of Ararat' ,N'Shire of Glenelg' ,N'Shire of Moyne') 
END ELSE BEGIN 
	UPDATE [dbo].[RegionsLGA] SET [Region] = N'South West Victoria', [LGA] = N'Hire of Southern Grampians', [Location1] = N'Rural City of Ararat' , [Location2] = N'Shire of Glenelg', [Location3] = N'Shire of Moyne'WHERE [Id] =N'F397BB09-77E7-48D8-8CB2-84A9383B3022' END 
GO
 
IF NOT EXISTS (SELECT * FROM [dbo].[RegionsLGA] WHERE [Id] = N'DE92BC7C-E20E-4A5E-8A5E-CEB0F2FA3371') BEGIN 
	INSERT INTO [dbo].[RegionsLGA] ([Id] ,[Region] ,[LGA] ,[Location1] ,[Location2] ,[Location3]) 
VALUES (N'DE92BC7C-E20E-4A5E-8A5E-CEB0F2FA3371' ,N'South West Victoria',N'Congrangamite Shire' ,N'City of Warrnambool' ,N'' ,N'') 
END ELSE BEGIN 
	UPDATE [dbo].[RegionsLGA] SET [Region] = N'South West Victoria', [LGA] = N'Congrangamite Shire', [Location1] = N'City of Warrnambool' , [Location2] = N'', [Location3] = N''
	WHERE [Id] =N'DE92BC7C-E20E-4A5E-8A5E-CEB0F2FA3371' END 
GO
 
IF NOT EXISTS (SELECT * FROM [dbo].[RegionsLGA] WHERE [Id] = N'121C324F-80AE-44CF-A6F8-4C8F5CDAFEEE') BEGIN 
	INSERT INTO [dbo].[RegionsLGA] ([Id] ,[Region] ,[LGA] ,[Location1] ,[Location2] ,[Location3]) 
	VALUES (N'121C324F-80AE-44CF-A6F8-4C8F5CDAFEEE' ,N'Geelong and South Coast',N'City of Greater Geelong' ,N'Borough of Queenscliffe' ,N'Surf Coast Shire' ,N'Colac Otway Shire') 
END ELSE BEGIN 
UPDATE [dbo].[RegionsLGA] SET [Region] = N'Geelong and South Coast', [LGA] = N'City of Greater Geelong', [Location1] = N'Borough of Queenscliffe' , [Location2] = N'Surf Coast Shire', [Location3] = N'Colac Otway Shire'WHERE [Id] =N'121C324F-80AE-44CF-A6F8-4C8F5CDAFEEE' END 
GO
 
IF NOT EXISTS (SELECT * FROM [dbo].[RegionsLGA] WHERE [Id] = N'FDDACE4B-CB94-4B89-BE8C-3F40F761BE82') BEGIN 
	INSERT INTO [dbo].[RegionsLGA] ([Id] ,[Region] ,[LGA] ,[Location1] ,[Location2] ,[Location3]) 
	VALUES (N'FDDACE4B-CB94-4B89-BE8C-3F40F761BE82' ,N'Geelong and South Coast',N'Golden Plains Shire' ,N'Moorabool Shire' ,N'' ,N'') 
END ELSE BEGIN 
	UPDATE [dbo].[RegionsLGA] SET [Region] = N'Geelong and South Coast', [LGA] = N'Golden Plains Shire', [Location1] = N'Moorabool Shire' , [Location2] = N'', [Location3] = N''WHERE [Id] =N'FDDACE4B-CB94-4B89-BE8C-3F40F761BE82' END 
GO
 
IF NOT EXISTS (SELECT * FROM [dbo].[RegionsLGA] WHERE [Id] = N'CD91CB44-7181-41AD-94EC-25E1542BDBBE') BEGIN 
  INSERT INTO [dbo].[RegionsLGA] ([Id] ,[Region] ,[LGA] ,[Location1] ,[Location2] ,[Location3]) 
  VALUES (N'CD91CB44-7181-41AD-94EC-25E1542BDBBE' ,N'Greater Melbourne ',N'Includes all sub-regions and LGAs below' ,N'' ,N'' ,N'') 
END ELSE BEGIN 
UPDATE [dbo].[RegionsLGA] SET [Region] = N'Greater Melbourne', [LGA] = N'Includes all sub-regions and LGAs below', [Location1] = N'' 
, [Location2] = N'', [Location3] = N''WHERE [Id] =N'CD91CB44-7181-41AD-94EC-25E1542BDBBE' END 
GO
 
IF NOT EXISTS (SELECT * FROM [dbo].[RegionsLGA] WHERE [Id] = N'73C598E9-A4C3-4F12-9E02-CCE09D74C907') BEGIN 
INSERT INTO [dbo].[RegionsLGA] ([Id] ,[Region] ,[LGA] ,[Location1] ,[Location2] ,[Location3]) 
VALUES (N'73C598E9-A4C3-4F12-9E02-CCE09D74C907' ,N'Central Melbourne ',N'City of Melbourne' ,N'City or Yarra' ,N'City of Port Philip' ,N'City of Stonnington') 
END ELSE BEGIN 
UPDATE [dbo].[RegionsLGA] SET [Region] = N'Central Melbourne', [LGA] = N'City of Melbourne', [Location1] = N'City or Yarra' , 
[Location2] = N'City of Port Philip', [Location3] = N'City of Stonnington'WHERE [Id] =N'73C598E9-A4C3-4F12-9E02-CCE09D74C907' END 
GO
 
IF NOT EXISTS (SELECT * FROM [dbo].[RegionsLGA] WHERE [Id] = N'CD1F53A3-E4FF-4253-83B7-C6CBBD7C0ABD') BEGIN 
	INSERT INTO [dbo].[RegionsLGA] ([Id] ,[Region] ,[LGA] ,[Location1] ,[Location2] ,[Location3]) 
	VALUES (N'CD1F53A3-E4FF-4253-83B7-C6CBBD7C0ABD' ,N'Central Melbourne',N'City of Boorondara' ,N'City of Darebin' ,N'City of Moreland' ,N'City of Moonee Valley') 
END ELSE BEGIN 
	UPDATE [dbo].[RegionsLGA] 
	SET [Region] = N'Central Melbourne', [LGA] = N'City of Boorondara', [Location1] = N'City of Darebin' , [Location2] = N'City of Moreland',[Location3] = N'City of Moonee Valley'
	WHERE [Id] =N'CD1F53A3-E4FF-4253-83B7-C6CBBD7C0ABD' END 
GO
 
IF NOT EXISTS (SELECT * FROM [dbo].[RegionsLGA] WHERE [Id] = N'C789CEB7-EEB7-45E9-AD8C-595F60285DAA') BEGIN 
INSERT INTO [dbo].[RegionsLGA] ([Id] ,[Region] ,[LGA] ,[Location1] ,[Location2] ,[Location3]) 
	VALUES (N'C789CEB7-EEB7-45E9-AD8C-595F60285DAA' ,N'Central Melbourne',N'City of Bayside' ,N'City of Glen Eira' ,N'' ,N'') 
END ELSE BEGIN 
	UPDATE [dbo].[RegionsLGA] SET [Region] = N'Central Melbourne', [LGA] = N'City of Bayside', [Location1] = N'City of Glen Eira' , [Location2] = N'', [Location3] = N''
	WHERE [Id] =N'C789CEB7-EEB7-45E9-AD8C-595F60285DAA' END 
GO
 
IF NOT EXISTS (SELECT * FROM [dbo].[RegionsLGA] WHERE [Id] = N'E9F24EEB-25AF-4FB8-88BC-BAA209B7A64B') BEGIN 
	INSERT INTO [dbo].[RegionsLGA] ([Id] ,[Region] ,[LGA] ,[Location1] ,[Location2] ,[Location3]) 
	VALUES (N'E9F24EEB-25AF-4FB8-88BC-BAA209B7A64B' ,N'Western Melbourne ',N'City of Maribyrnong' ,N'City of Wyndham' ,N'City of Brimbank' ,N'City of Melton') 
END ELSE BEGIN 
	UPDATE [dbo].[RegionsLGA] SET [Region] = N'Western Melbourne', [LGA] = N'City of Maribyrnong', 
	[Location1] = N'City of Wyndham' , [Location2] = N'City of Brimbank', [Location3] = N'City of Melton'WHERE [Id] =N'E9F24EEB-25AF-4FB8-88BC-BAA209B7A64B' END 
GO
 
IF NOT EXISTS (SELECT * FROM [dbo].[RegionsLGA] WHERE [Id] = N'0A88D4FA-7C89-449A-9DB3-9AE8BC4AE085') BEGIN 
	INSERT INTO [dbo].[RegionsLGA] ([Id] ,[Region] ,[LGA] ,[Location1] ,[Location2] ,[Location3]) 
	VALUES (N'0A88D4FA-7C89-449A-9DB3-9AE8BC4AE085' ,N'City of Wyndham',N'City of Hobsons Bay' ,N'City of Hume' ,N'' ,N'') 
END ELSE BEGIN 
	UPDATE [dbo].[RegionsLGA] SET [Region] = N'City of Wyndham', [LGA] = N'City of Hobsons Bay', [Location1] = N'City of Hume' , [Location2] = N'', [Location3] = N''
WHERE [Id] =N'0A88D4FA-7C89-449A-9DB3-9AE8BC4AE085' END 
GO
 
IF NOT EXISTS (SELECT * FROM [dbo].[RegionsLGA] WHERE [Id] = N'796C6E43-D3F5-41E1-B772-34BA77F394B8') BEGIN 
	INSERT INTO [dbo].[RegionsLGA] ([Id] ,[Region] ,[LGA] ,[Location1] ,[Location2] ,[Location3])
	VALUES (N'796C6E43-D3F5-41E1-B772-34BA77F394B8' ,N'Northern Melbourne ',N'City of Whittlesea' ,N'Shire of Nillumbik' ,N'City of Banyule' ,N'City of Manningham') 
END ELSE BEGIN 
	UPDATE [dbo].[RegionsLGA] SET [Region] = N'Northern Melbourne', [LGA] = N'City of Whittlesea', [Location1] = N'Shire of Nillumbik' , [Location2] = N'City of Banyule', [Location3] = N'City of Manningham'
	WHERE [Id] =N'796C6E43-D3F5-41E1-B772-34BA77F394B8' END 
GO
 
IF NOT EXISTS (SELECT * FROM [dbo].[RegionsLGA] WHERE [Id] = N'8F7BD4B6-FB5D-4246-828B-08263B74DB48') BEGIN 
	INSERT INTO [dbo].[RegionsLGA] ([Id] ,[Region] ,[LGA] ,[Location1] ,[Location2] ,[Location3]) 
	VALUES (N'8F7BD4B6-FB5D-4246-828B-08263B74DB48' ,N'North Eastern Melbourne',N'Shire of Yarra Ranges' ,N'City of Maroondah' ,N'City of Monash' ,N'City of Whitehorse') 
END ELSE BEGIN 
	UPDATE [dbo].[RegionsLGA] SET [Region] = N'North Eastern Melbourne', [LGA] = N'Shire of Yarra Ranges', [Location1] = N'City of Maroondah' , [Location2] = N'City of Monash', [Location3] = N'City of Whitehorse'
	WHERE [Id] =N'8F7BD4B6-FB5D-4246-828B-08263B74DB48' END 
GO
 
IF NOT EXISTS (SELECT * FROM [dbo].[RegionsLGA] WHERE [Id] = N'D5140D34-892E-4CAC-8EE2-E23F6CFB7371') BEGIN 
	INSERT INTO [dbo].[RegionsLGA] ([Id] ,[Region] ,[LGA] ,[Location1] ,[Location2] ,[Location3]) 
	VALUES (N'D5140D34-892E-4CAC-8EE2-E23F6CFB7371' ,N'North Eastern Melbourne',N'City of Knox' ,N'' ,N'' ,N'') 
END ELSE BEGIN 
	UPDATE [dbo].[RegionsLGA] SET [Region] = N'North Eastern Melbourne', [LGA] = N'City of Knox', [Location1] = N'' , [Location2] = N'', [Location3] = N''
	WHERE [Id] =N'D5140D34-892E-4CAC-8EE2-E23F6CFB7371' END 
GO
 
IF NOT EXISTS (SELECT * FROM [dbo].[RegionsLGA] WHERE [Id] = N'E3773C72-9CC1-4843-BD65-BF01422BC211') BEGIN 
INSERT INTO [dbo].[RegionsLGA] ([Id] ,[Region] ,[LGA] ,[Location1] ,[Location2] ,[Location3]) 
VALUES (N'E3773C72-9CC1-4843-BD65-BF01422BC211' ,N'South Eastern Melbourne ',N'City of Greater Dandenong' ,N'City of Casey' ,N'Shire of Cardinia' ,N'') 
END ELSE BEGIN 
	UPDATE [dbo].[RegionsLGA] SET [Region] = N'South Eastern Melbourne', [LGA] = N'City of Greater Dandenong',	[Location1] = N'City of Casey' , [Location2] = N'Shire of Cardinia', [Location3] = N''
	WHERE [Id] =N'E3773C72-9CC1-4843-BD65-BF01422BC211' END 
GO
 
IF NOT EXISTS (SELECT * FROM [dbo].[RegionsLGA] WHERE [Id] = N'E0246636-836A-4138-93CC-12F5B9BD1FE6') BEGIN 
	INSERT INTO [dbo].[RegionsLGA] ([Id] ,[Region] ,[LGA] ,[Location1] ,[Location2] ,[Location3]) 
	VALUES (N'E0246636-836A-4138-93CC-12F5B9BD1FE6' ,N'Southern Melbourne and Peninsula ',N'City of Kingston' ,N'City of Frankston' ,N'Shire of Mornington Peninsula' ,N'') 
END ELSE BEGIN 
	UPDATE [dbo].[RegionsLGA] SET [Region] = N'Southern Melbourne and Peninsula', [LGA] = N'City of Kingston', [Location1] = N'City of Frankston' , [Location2] = N'Shire of Mornington Peninsula', [Location3] = N''
	WHERE [Id] =N'E0246636-836A-4138-93CC-12F5B9BD1FE6' END 
GO
