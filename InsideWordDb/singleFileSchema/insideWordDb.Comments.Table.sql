USE [insideWordDb]
GO
/****** Object:  Table [insideWordDb].[Comments]    Script Date: 06/04/2011 10:41:42 ******/
ALTER TABLE [insideWordDb].[Comments] DROP CONSTRAINT [FK_Comments_Members]
GO
ALTER TABLE [insideWordDb].[Comments] DROP CONSTRAINT [FK_Conversations_Comments]
GO
ALTER TABLE [insideWordDb].[Comments] DROP CONSTRAINT [FK_Comments_Members]
GO
ALTER TABLE [insideWordDb].[Comments] DROP CONSTRAINT [FK_Conversations_Comments]
GO
DROP TABLE [insideWordDb].[Comments]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[Comments](
	[CommentId] [bigint] IDENTITY(1,1) NOT NULL,
	[ConversationId] [bigint] NOT NULL,
	[SystemEditDate] [datetime2](7) NOT NULL,
	[SystemCreateDate] [datetime2](7) NOT NULL,
	[EditDate] [datetime2](7) NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[MemberId] [bigint] NULL,
	[Text] [nvarchar](512) NOT NULL,
	[IsHidden] [bit] NOT NULL,
	[IsFlagged] [int] NOT NULL,
	[IgnoreFlags] [bit] NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [insideWordDb].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Members] FOREIGN KEY([MemberId])
REFERENCES [insideWordDb].[Members] ([MemberId])
ON DELETE SET NULL
GO
ALTER TABLE [insideWordDb].[Comments] CHECK CONSTRAINT [FK_Comments_Members]
GO
ALTER TABLE [insideWordDb].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Conversations_Comments] FOREIGN KEY([ConversationId])
REFERENCES [insideWordDb].[Conversations] ([ConversationId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[Comments] CHECK CONSTRAINT [FK_Conversations_Comments]
GO
