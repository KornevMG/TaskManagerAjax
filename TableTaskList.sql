USE [TaskManager]
GO
/****** Object:  Table [dbo].[TaskList]    Script Date: 15.09.2019 12:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskList](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Tasks_Id]  DEFAULT (newsequentialid()),
	[Name] [nvarchar](max) NULL,
	[Mark] [bit] NOT NULL CONSTRAINT [DF_Tasks_Mark]  DEFAULT ((0)),
	[Dt] [datetime] NOT NULL CONSTRAINT [DF_Tasks_Dt]  DEFAULT (getdate()),
 CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[TaskList] ([Id], [Name], [Mark], [Dt]) VALUES (N'd415d6d6-36d6-e911-84b8-d8cb8ae663a7', N'task 1', 1, CAST(N'2019-09-14 17:00:00.000' AS DateTime))
INSERT [dbo].[TaskList] ([Id], [Name], [Mark], [Dt]) VALUES (N'ffa815de-36d6-e911-84b8-d8cb8ae663a7', N'task 2', 0, CAST(N'2019-09-14 18:00:10.000' AS DateTime))
INSERT [dbo].[TaskList] ([Id], [Name], [Mark], [Dt]) VALUES (N'00a915de-36d6-e911-84b8-d8cb8ae663a7', N'task 3', 0, CAST(N'2019-09-14 18:10:00.000' AS DateTime))
