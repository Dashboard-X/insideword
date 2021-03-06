USE [insideWordDb]
GO
/****** Object:  Table [insideWordDb].[Groups]    Script Date: 06/04/2011 10:41:43 ******/
DROP TABLE [insideWordDb].[Groups]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[Groups](
	[GroupId] [bigint] IDENTITY(1,1) NOT NULL,
	[SystemCreateDate] [datetime2](7) NOT NULL,
	[SystemEditDate] [datetime2](7) NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[EditDate] [datetime2](7) NOT NULL,
	[Name] [nvarchar](32) NOT NULL,
	[IsHidden] [bit] NOT NULL,
	[IsBanned] [bit] NOT NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
