USE [insideWordDb]
GO
/****** Object:  Table [insideWordDb].[PhotoScores]    Script Date: 06/04/2011 10:41:41 ******/
ALTER TABLE [insideWordDb].[PhotoScores] DROP CONSTRAINT [FK_PhotoScores_Photos]
GO
ALTER TABLE [insideWordDb].[PhotoScores] DROP CONSTRAINT [FK_PhotoScores_Photos]
GO
DROP TABLE [insideWordDb].[PhotoScores]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[PhotoScores](
	[PhotoScoreId] [bigint] IDENTITY(1,1) NOT NULL,
	[SystemEditDate] [datetime2](7) NOT NULL,
	[SystemCreateDate] [datetime2](7) NOT NULL,
	[PhotoId] [bigint] NOT NULL,
	[Score] [float] NOT NULL,
 CONSTRAINT [PK_PhotoScores] PRIMARY KEY CLUSTERED 
(
	[PhotoScoreId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_PhotoId] ON [insideWordDb].[PhotoScores] 
(
	[PhotoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
ALTER TABLE [insideWordDb].[PhotoScores]  WITH CHECK ADD  CONSTRAINT [FK_PhotoScores_Photos] FOREIGN KEY([PhotoId])
REFERENCES [insideWordDb].[Photos] ([PhotoId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[PhotoScores] CHECK CONSTRAINT [FK_PhotoScores_Photos]
GO
