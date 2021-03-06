USE [insideWordDb]
GO
/****** Object:  Table [insideWordDb].[AlternateCategoryIds]    Script Date: 06/04/2011 10:41:43 ******/
ALTER TABLE [insideWordDb].[AlternateCategoryIds] DROP CONSTRAINT [FK_AlternateCategoryIds_AlternateCategoryIds]
GO
ALTER TABLE [insideWordDb].[AlternateCategoryIds] DROP CONSTRAINT [FK_AlternateCategoryIds_Members]
GO
ALTER TABLE [insideWordDb].[AlternateCategoryIds] DROP CONSTRAINT [FK_AlternateCategoryIds_AlternateCategoryIds]
GO
ALTER TABLE [insideWordDb].[AlternateCategoryIds] DROP CONSTRAINT [FK_AlternateCategoryIds_Members]
GO
DROP TABLE [insideWordDb].[AlternateCategoryIds]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[AlternateCategoryIds](
	[AlternateCategoryIdId] [bigint] IDENTITY(1,1) NOT NULL,
	[SystemCreateDate] [datetime2](7) NOT NULL,
	[SystemEditDate] [datetime2](7) NOT NULL,
	[CategoryId] [bigint] NULL,
	[MemberId] [bigint] NOT NULL,
	[AlternateId] [bigint] NOT NULL,
	[DisplayName] [nvarchar](256) NULL,
	[OverrideFlag] [bit] NOT NULL,
 CONSTRAINT [PK_AlternateCategoryIds] PRIMARY KEY CLUSTERED 
(
	[AlternateCategoryIdId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_AlternateCategoryIds] ON [insideWordDb].[AlternateCategoryIds] 
(
	[MemberId] ASC,
	[AlternateId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
ALTER TABLE [insideWordDb].[AlternateCategoryIds]  WITH CHECK ADD  CONSTRAINT [FK_AlternateCategoryIds_AlternateCategoryIds] FOREIGN KEY([CategoryId])
REFERENCES [insideWordDb].[Categories] ([CategoryId])
ON DELETE SET NULL
GO
ALTER TABLE [insideWordDb].[AlternateCategoryIds] CHECK CONSTRAINT [FK_AlternateCategoryIds_AlternateCategoryIds]
GO
ALTER TABLE [insideWordDb].[AlternateCategoryIds]  WITH CHECK ADD  CONSTRAINT [FK_AlternateCategoryIds_Members] FOREIGN KEY([MemberId])
REFERENCES [insideWordDb].[Members] ([MemberId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[AlternateCategoryIds] CHECK CONSTRAINT [FK_AlternateCategoryIds_Members]
GO
