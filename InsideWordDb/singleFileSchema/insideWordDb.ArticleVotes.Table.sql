USE [insideWordDb]
GO
/****** Object:  Table [insideWordDb].[ArticleVotes]    Script Date: 06/04/2011 10:41:41 ******/
ALTER TABLE [insideWordDb].[ArticleVotes] DROP CONSTRAINT [FK_ArticleVotes_Articles]
GO
ALTER TABLE [insideWordDb].[ArticleVotes] DROP CONSTRAINT [FK_ArticleVotes_Members]
GO
ALTER TABLE [insideWordDb].[ArticleVotes] DROP CONSTRAINT [FK_ArticleVotes_Articles]
GO
ALTER TABLE [insideWordDb].[ArticleVotes] DROP CONSTRAINT [FK_ArticleVotes_Members]
GO
DROP TABLE [insideWordDb].[ArticleVotes]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[ArticleVotes](
	[ArticleVoteId] [bigint] IDENTITY(1,1) NOT NULL,
	[SystemEditDate] [datetime2](7) NOT NULL,
	[SystemCreateDate] [datetime2](7) NOT NULL,
	[ArticleId] [bigint] NOT NULL,
	[MemberId] [bigint] NULL,
	[VoteWeight] [int] NOT NULL,
	[IsShadowVote] [bit] NOT NULL,
	[IsFlag] [bit] NOT NULL,
	[Text] [nvarchar](512) NOT NULL,
	[IsHidden] [bit] NOT NULL,
 CONSTRAINT [PK_ArticleVote] PRIMARY KEY CLUSTERED 
(
	[ArticleVoteId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_ArticleId] ON [insideWordDb].[ArticleVotes] 
(
	[ArticleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
ALTER TABLE [insideWordDb].[ArticleVotes]  WITH CHECK ADD  CONSTRAINT [FK_ArticleVotes_Articles] FOREIGN KEY([ArticleId])
REFERENCES [insideWordDb].[Articles] ([ArticleId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[ArticleVotes] CHECK CONSTRAINT [FK_ArticleVotes_Articles]
GO
ALTER TABLE [insideWordDb].[ArticleVotes]  WITH CHECK ADD  CONSTRAINT [FK_ArticleVotes_Members] FOREIGN KEY([MemberId])
REFERENCES [insideWordDb].[Members] ([MemberId])
ON DELETE SET NULL
GO
ALTER TABLE [insideWordDb].[ArticleVotes] CHECK CONSTRAINT [FK_ArticleVotes_Members]
GO
