USE [insideWordDb]
GO
/****** Object:  Table [insideWordDb].[AlternateMemberIds]    Script Date: 06/04/2011 10:41:42 ******/
ALTER TABLE [insideWordDb].[AlternateMemberIds] DROP CONSTRAINT [FK_AlternateMemberIds_Members]
GO
ALTER TABLE [insideWordDb].[AlternateMemberIds] DROP CONSTRAINT [FK_AlternateMemberIds_Members]
GO
DROP TABLE [insideWordDb].[AlternateMemberIds]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[AlternateMemberIds](
	[AlternateMemberIdId] [bigint] IDENTITY(1,1) NOT NULL,
	[SystemEditDate] [datetime2](7) NOT NULL,
	[SystemCreateDate] [datetime2](7) NOT NULL,
	[EditDate] [datetime2](7) NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[ExpiryDate] [datetime2](7) NULL,
	[MemberId] [bigint] NOT NULL,
	[AlternateType] [int] NOT NULL,
	[AlternateId] [nvarchar](256) NOT NULL,
	[Data] [nvarchar](128) NULL,
	[DisplayName] [nvarchar](64) NULL,
	[UsePassword] [bit] NOT NULL,
	[IsValidated] [bit] NOT NULL,
	[IsNonce] [bit] NOT NULL,
	[IsHidden] [bit] NOT NULL,
	[IsHashed] [bit] NOT NULL,
	[LoginCount] [bigint] NOT NULL,
 CONSTRAINT [PK_AlternateMemberIds] PRIMARY KEY CLUSTERED 
(
	[AlternateMemberIdId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_AlternateMemberIds_AlternateId] ON [insideWordDb].[AlternateMemberIds] 
(
	[AlternateId] ASC,
	[IsValidated] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
ALTER TABLE [insideWordDb].[AlternateMemberIds]  WITH CHECK ADD  CONSTRAINT [FK_AlternateMemberIds_Members] FOREIGN KEY([MemberId])
REFERENCES [insideWordDb].[Members] ([MemberId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[AlternateMemberIds] CHECK CONSTRAINT [FK_AlternateMemberIds_Members]
GO
