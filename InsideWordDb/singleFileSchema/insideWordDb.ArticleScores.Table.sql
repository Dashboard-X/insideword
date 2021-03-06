USE [insideWordDb]
GO
/****** Object:  Table [insideWordDb].[ArticleScores]    Script Date: 06/04/2011 10:41:41 ******/
ALTER TABLE [insideWordDb].[ArticleScores] DROP CONSTRAINT [FK_ArticleScores_Articles]
GO
ALTER TABLE [insideWordDb].[ArticleScores] DROP CONSTRAINT [FK_ArticleScores_Articles]
GO
DROP TABLE [insideWordDb].[ArticleScores]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[ArticleScores](
	[ArticleScoreId] [bigint] IDENTITY(1,1) NOT NULL,
	[SystemEditDate] [datetime2](7) NOT NULL,
	[SystemCreateDate] [datetime2](7) NOT NULL,
	[ArticleId] [bigint] NOT NULL,
	[ScoreType] [int] NOT NULL,
	[Score] [float] NOT NULL,
 CONSTRAINT [PK_ArticleScores] PRIMARY KEY CLUSTERED 
(
	[ArticleScoreId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_ArticleId_ScoreType] ON [insideWordDb].[ArticleScores] 
(
	[ArticleId] ASC,
	[ScoreType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
ALTER TABLE [insideWordDb].[ArticleScores]  WITH CHECK ADD  CONSTRAINT [FK_ArticleScores_Articles] FOREIGN KEY([ArticleId])
REFERENCES [insideWordDb].[Articles] ([ArticleId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[ArticleScores] CHECK CONSTRAINT [FK_ArticleScores_Articles]
GO
