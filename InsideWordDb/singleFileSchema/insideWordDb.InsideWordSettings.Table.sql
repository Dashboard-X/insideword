USE [insideWordDb]
GO
/****** Object:  Table [insideWordDb].[InsideWordSettings]    Script Date: 06/04/2011 10:41:43 ******/
DROP TABLE [insideWordDb].[InsideWordSettings]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[InsideWordSettings](
	[InsideWordSettingsId] [bigint] IDENTITY(1,1) NOT NULL,
	[SystemCreateDate] [datetime2](7) NOT NULL,
	[SystemEditDate] [datetime2](7) NOT NULL,
	[SettingKey] [nvarchar](64) NOT NULL,
	[SettingValue] [nvarchar](512) NOT NULL,
 CONSTRAINT [PK_InsideWordSettings_Primary_Key] PRIMARY KEY CLUSTERED 
(
	[InsideWordSettingsId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_InsideWordSettings_Key] ON [insideWordDb].[InsideWordSettings] 
(
	[SettingKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
