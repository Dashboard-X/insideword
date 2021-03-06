USE [insideWordDb]
GO
/****** Object:  Table [insideWordDb].[Categories]    Script Date: 06/04/2011 10:41:43 ******/
ALTER TABLE [insideWordDb].[Categories] DROP CONSTRAINT [FK_Categories_Categories]
GO
ALTER TABLE [insideWordDb].[Categories] DROP CONSTRAINT [FK_Categories_Categories]
GO
DROP TABLE [insideWordDb].[Categories]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [insideWordDb].[Categories](
	[CategoryId] [bigint] IDENTITY(1,1) NOT NULL,
	[SystemEditDate] [datetime2](7) NOT NULL,
	[SystemCreateDate] [datetime2](7) NOT NULL,
	[EditDate] [datetime2](7) NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[ParentCategoryId] [bigint] NULL,
	[Title] [nvarchar](256) NOT NULL,
	[IsHidden] [bit] NOT NULL,
	[HierarchyLevel] [int] NOT NULL,
	[FullPath] [varchar](50) NOT NULL,
 CONSTRAINT [PK__Category__19093A0B0E04126B] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Categories_FullPath] ON [insideWordDb].[Categories] 
(
	[FullPath] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
ALTER TABLE [insideWordDb].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_Categories] FOREIGN KEY([ParentCategoryId])
REFERENCES [insideWordDb].[Categories] ([CategoryId])
GO
ALTER TABLE [insideWordDb].[Categories] CHECK CONSTRAINT [FK_Categories_Categories]
GO
