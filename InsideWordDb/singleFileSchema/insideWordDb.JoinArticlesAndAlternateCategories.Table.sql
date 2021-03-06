USE [insideWordDb]
GO
/****** Object:  Table [insideWordDb].[JoinArticlesAndAlternateCategories]    Script Date: 06/04/2011 10:41:42 ******/
ALTER TABLE [insideWordDb].[JoinArticlesAndAlternateCategories] DROP CONSTRAINT [FK_JoinArticlesAndAlternateCategories_AlternateCategoryIds]
GO
ALTER TABLE [insideWordDb].[JoinArticlesAndAlternateCategories] DROP CONSTRAINT [FK_JoinArticlesAndAlternateCategories_Articles]
GO
ALTER TABLE [insideWordDb].[JoinArticlesAndAlternateCategories] DROP CONSTRAINT [FK_JoinArticlesAndAlternateCategories_AlternateCategoryIds]
GO
ALTER TABLE [insideWordDb].[JoinArticlesAndAlternateCategories] DROP CONSTRAINT [FK_JoinArticlesAndAlternateCategories_Articles]
GO
DROP TABLE [insideWordDb].[JoinArticlesAndAlternateCategories]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[JoinArticlesAndAlternateCategories](
	[ArticleId] [bigint] NOT NULL,
	[AlternateCategoryIdId] [bigint] NOT NULL,
 CONSTRAINT [PK_JoinArticlesAndAlternateCategories] PRIMARY KEY CLUSTERED 
(
	[ArticleId] ASC,
	[AlternateCategoryIdId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [insideWordDb].[JoinArticlesAndAlternateCategories]  WITH CHECK ADD  CONSTRAINT [FK_JoinArticlesAndAlternateCategories_AlternateCategoryIds] FOREIGN KEY([AlternateCategoryIdId])
REFERENCES [insideWordDb].[AlternateCategoryIds] ([AlternateCategoryIdId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[JoinArticlesAndAlternateCategories] CHECK CONSTRAINT [FK_JoinArticlesAndAlternateCategories_AlternateCategoryIds]
GO
ALTER TABLE [insideWordDb].[JoinArticlesAndAlternateCategories]  WITH CHECK ADD  CONSTRAINT [FK_JoinArticlesAndAlternateCategories_Articles] FOREIGN KEY([ArticleId])
REFERENCES [insideWordDb].[Articles] ([ArticleId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[JoinArticlesAndAlternateCategories] CHECK CONSTRAINT [FK_JoinArticlesAndAlternateCategories_Articles]
GO
