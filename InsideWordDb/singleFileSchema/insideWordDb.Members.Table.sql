USE [insideWordDb]
GO
/****** Object:  Table [insideWordDb].[Members]    Script Date: 06/04/2011 10:41:41 ******/
ALTER TABLE [insideWordDb].[Members] DROP CONSTRAINT [FK_Members_Photos]
GO
ALTER TABLE [insideWordDb].[Members] DROP CONSTRAINT [FK_Members_Photos]
GO
ALTER TABLE [insideWordDb].[Members] DROP CONSTRAINT [DF_Members_SystemEditDate]
GO
ALTER TABLE [insideWordDb].[Members] DROP CONSTRAINT [DF_Members_SystemCreateDate]
GO
ALTER TABLE [insideWordDb].[Members] DROP CONSTRAINT [DF_Members_IsArticleAdmin]
GO
DROP TABLE [insideWordDb].[Members]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[Members](
	[MemberId] [bigint] IDENTITY(1,1) NOT NULL,
	[SystemEditDate] [datetime2](7) NOT NULL CONSTRAINT [DF_Members_SystemEditDate]  DEFAULT ('0001-01-01 00:00:00.0000000'),
	[SystemCreateDate] [datetime2](7) NOT NULL CONSTRAINT [DF_Members_SystemCreateDate]  DEFAULT ('0001-01-01 00:00:00.0000000'),
	[EditDate] [datetime2](7) NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[Password] [nvarchar](128) NULL,
	[PhotoId] [bigint] NULL,
	[Bio] [nvarchar](1024) NULL,
	[IsSuperAdmin] [bit] NOT NULL,
	[IsMasterAdmin] [bit] NOT NULL,
	[IsUserAdmin] [bit] NOT NULL,
	[IsCategoryAdmin] [bit] NOT NULL,
	[IsArticleAdmin] [bit] NOT NULL CONSTRAINT [DF_Members_IsArticleAdmin]  DEFAULT ((0)),
	[IsBanned] [bit] NOT NULL,
 CONSTRAINT [PK__Users__1788CC4C11D4A34F] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [insideWordDb].[Members]  WITH CHECK ADD  CONSTRAINT [FK_Members_Photos] FOREIGN KEY([PhotoId])
REFERENCES [insideWordDb].[Photos] ([PhotoId])
ON DELETE SET NULL
GO
ALTER TABLE [insideWordDb].[Members] CHECK CONSTRAINT [FK_Members_Photos]
GO
