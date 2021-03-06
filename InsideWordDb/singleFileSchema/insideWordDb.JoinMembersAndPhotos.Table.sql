USE [insideWordDb]
GO
/****** Object:  Table [insideWordDb].[JoinMembersAndPhotos]    Script Date: 06/04/2011 10:41:42 ******/
ALTER TABLE [insideWordDb].[JoinMembersAndPhotos] DROP CONSTRAINT [FK_JoinPhotosAndMembers_Members]
GO
ALTER TABLE [insideWordDb].[JoinMembersAndPhotos] DROP CONSTRAINT [FK_JoinPhotosAndUsers_Photos]
GO
ALTER TABLE [insideWordDb].[JoinMembersAndPhotos] DROP CONSTRAINT [FK_JoinPhotosAndMembers_Members]
GO
ALTER TABLE [insideWordDb].[JoinMembersAndPhotos] DROP CONSTRAINT [FK_JoinPhotosAndUsers_Photos]
GO
DROP TABLE [insideWordDb].[JoinMembersAndPhotos]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[JoinMembersAndPhotos](
	[PhotoId] [bigint] NOT NULL,
	[MemberId] [bigint] NOT NULL,
 CONSTRAINT [PK_JoinMembersAndPhotos] PRIMARY KEY CLUSTERED 
(
	[PhotoId] ASC,
	[MemberId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [insideWordDb].[JoinMembersAndPhotos]  WITH CHECK ADD  CONSTRAINT [FK_JoinPhotosAndMembers_Members] FOREIGN KEY([MemberId])
REFERENCES [insideWordDb].[Members] ([MemberId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[JoinMembersAndPhotos] CHECK CONSTRAINT [FK_JoinPhotosAndMembers_Members]
GO
ALTER TABLE [insideWordDb].[JoinMembersAndPhotos]  WITH CHECK ADD  CONSTRAINT [FK_JoinPhotosAndUsers_Photos] FOREIGN KEY([PhotoId])
REFERENCES [insideWordDb].[Photos] ([PhotoId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[JoinMembersAndPhotos] CHECK CONSTRAINT [FK_JoinPhotosAndUsers_Photos]
GO
