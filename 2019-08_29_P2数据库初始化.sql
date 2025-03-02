USE [P2]
GO
/****** Object:  Table [dbo].[Sys_Items]    Script Date: 08/29/2019 15:33:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Items](
	[Id] [varchar](128) NOT NULL,
	[ParentId] [varchar](128) NULL,
	[EnCode] [nvarchar](max) NULL,
	[FullName] [nvarchar](max) NULL,
	[IsTree] [bit] NOT NULL,
	[Layers] [int] NOT NULL,
	[SortCode] [int] NULL,
	[DeleteMark] [bit] NOT NULL,
	[EnabledMark] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[AddTime] [datetime] NULL,
	[AddUserId] [nvarchar](max) NULL,
	[LastModifyTime] [datetime] NULL,
	[LastModifyUserId] [nvarchar](max) NULL,
	[DeleteTime] [datetime] NULL,
	[DeleteUserId] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Sys_Items] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主表主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'EnCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'FullName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'树型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'IsTree'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'层次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'Layers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'AddTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'AddUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'LastModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'LastModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'DeleteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'DeleteUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选项主表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items'
GO
INSERT [dbo].[Sys_Items] ([Id], [ParentId], [EnCode], [FullName], [IsTree], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'00F76465-DBBA-484A-B75C-E81DEE9313E6', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'Education', N'学历', 0, 2, 8, 0, 1, N'dd', CAST(0x0000AA4C012415F1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA4C012415F1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Items] ([Id], [ParentId], [EnCode], [FullName], [IsTree], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'0DF5B725-5FB8-487F-B0E4-BC563A77EB04', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'DbType', N'数据库类型', 0, 2, 4, 0, 1, N'dd', CAST(0x0000AA4C012415F1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA4C012415F1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Items] ([Id], [ParentId], [EnCode], [FullName], [IsTree], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'2748F35F-4EE2-417C-A907-3453146AAF67', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'Certificate', N'证件名称', 0, 2, 7, 0, 1, N'dd', CAST(0x0000AA4C012415F1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA4C012415F1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Items] ([Id], [ParentId], [EnCode], [FullName], [IsTree], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'68177d6c-aaf5-405a-8da6-142b60d3841c', N'e386c3be-c256-4b82-9e63-04441c097899', N'1', N'测试分类', 0, 2, 1, 1, 1, N'dd', CAST(0x0000AA4C012415F1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA4C012415F1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Items] ([Id], [ParentId], [EnCode], [FullName], [IsTree], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'0', N'Sys_Items1', N'通用字典', 0, 2, 2, 0, 1, N'dd', CAST(0x0000AA4C012415F1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA4C012415F1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Items] ([Id], [ParentId], [EnCode], [FullName], [IsTree], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'8CEB2F71-026C-4FA6-9A61-378127AE7320', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'102', N'生育', 0, 2, 13, 0, 1, N'dd', CAST(0x0000AA4C012415F1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA4C012415F1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Items] ([Id], [ParentId], [EnCode], [FullName], [IsTree], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'AuditState', N'审核状态', 0, 2, 6, 0, 1, N'dd', CAST(0x0000AA4C012415F1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA4C012415F1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Items] ([Id], [ParentId], [EnCode], [FullName], [IsTree], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'9a7079bd-0660-4549-9c2d-db5e8616619f', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'DbLogType', N'系统日志', 0, 2, 16, 0, 1, N'dd', CAST(0x0000AA4C012415F1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA4C012415F1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Items] ([Id], [ParentId], [EnCode], [FullName], [IsTree], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'OrganizeCategory', N'机构分类', 0, 2, 2, 0, 1, N'dd', CAST(0x0000AA4C012415F1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA4C012415F1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Items] ([Id], [ParentId], [EnCode], [FullName], [IsTree], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'BDD797C3-2323-4868-9A63-C8CC3437AEAA', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'104', N'性别', 0, 2, 15, 0, 1, N'dd', CAST(0x0000AA4C012415F1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA4C012415F1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Items] ([Id], [ParentId], [EnCode], [FullName], [IsTree], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'RoleType', N'角色类型', 0, 2, 3, 0, 1, N'dd', CAST(0x0000AA4C012415F1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA4C012415F1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Items] ([Id], [ParentId], [EnCode], [FullName], [IsTree], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'e386c3be-c256-4b82-9e63-04441c097899', N'0', N'0', N'测试分类', 0, 2, 1, 1, 1, N'dd', CAST(0x0000AA4C012415F1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA4C012415F1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Items] ([Id], [ParentId], [EnCode], [FullName], [IsTree], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'FA7537E2-1C64-4431-84BF-66158DD63269', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'101', N'婚姻', 0, 2, 12, 0, 1, N'dd', CAST(0x0000AA4C012415F1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA4C012415F1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
/****** Object:  Table [dbo].[Sys_FilterIP]    Script Date: 08/29/2019 15:33:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_FilterIP](
	[Id] [varchar](50) NOT NULL,
	[Type] [bit] NULL,
	[StartIP] [varchar](50) NULL,
	[EndIP] [varchar](50) NULL,
	[SortCode] [int] NOT NULL,
	[DeleteMark] [bit] NOT NULL,
	[EnabledMark] [bit] NOT NULL,
	[Description] [varchar](500) NULL,
	[AddTime] [datetime] NULL,
	[AddUserId] [varchar](50) NULL,
	[LastModifyTime] [datetime] NULL,
	[LastModifyUserId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
	[DeleteUserId] [varchar](500) NULL,
 CONSTRAINT [PK_SYS_FILTERIP] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'过滤主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'StartIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'EndIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'AddTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'AddUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'LastModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'LastModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'DeleteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'DeleteUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'过滤IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP'
GO
/****** Object:  Table [dbo].[Sys_DbBackup]    Script Date: 08/29/2019 15:33:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_DbBackup](
	[F_Id] [nvarchar](128) NOT NULL,
	[F_BackupType] [nvarchar](max) NULL,
	[F_DbName] [nvarchar](max) NULL,
	[F_FileName] [nvarchar](max) NULL,
	[F_FileSize] [nvarchar](max) NULL,
	[F_FilePath] [nvarchar](max) NULL,
	[F_BackupTime] [datetime] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NOT NULL,
	[F_EnabledMark] [bit] NOT NULL,
	[F_Description] [nvarchar](max) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [nvarchar](max) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [nvarchar](max) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Sys_DbBackup] PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sys_UserRole]    Script Date: 08/29/2019 15:33:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_UserRole](
	[Id] [varchar](50) NOT NULL,
	[UserId] [char](32) NOT NULL,
	[RoleId] [varchar](50) NOT NULL,
	[AddTime] [datetime] NULL,
	[AddUserId] [varchar](50) NULL,
 CONSTRAINT [PK_Sys_UserRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserRole', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserRole', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserRole', @level2type=N'COLUMN',@level2name=N'RoleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserRole', @level2type=N'COLUMN',@level2name=N'AddTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserRole', @level2type=N'COLUMN',@level2name=N'AddUserId'
GO
INSERT [dbo].[Sys_UserRole] ([Id], [UserId], [RoleId], [AddTime], [AddUserId]) VALUES (N'524707d02e9343518e4a2fe992229dee', N'4be0ae03e2354dabb5f5247687462b88', N'aeaa131bd47f40179f391028c20fd7d7', CAST(0x0000AAB800D84D9E AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
/****** Object:  Table [dbo].[Sys_User]    Script Date: 08/29/2019 15:33:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_User](
	[Id] [varchar](50) NOT NULL,
	[Account] [varchar](50) NULL,
	[RealName] [varchar](50) NULL,
	[NickName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[HeadIcon] [varchar](50) NULL,
	[Gender] [bit] NOT NULL,
	[Birthday] [date] NULL,
	[MobilePhone] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[WeChat] [varchar](50) NULL,
	[ManagerId] [varchar](50) NULL,
	[SecurityLevel] [int] NULL,
	[Signature] [varchar](500) NULL,
	[DepartmentId] [varchar](500) NULL,
	[DutyId] [varchar](500) NULL,
	[IsAdministrator] [bit] NOT NULL,
	[SortCode] [int] NOT NULL,
	[DeleteMark] [bit] NOT NULL,
	[EnabledMark] [bit] NOT NULL,
	[Description] [varchar](500) NULL,
	[EntryDate] [date] NULL,
	[TurnPositiveDate] [date] NULL,
	[EnterpriseJobNumber] [varchar](50) NULL,
	[IDNumber] [varchar](50) NULL,
	[EducationalBackground] [varchar](50) NULL,
	[CalculateSalaryRule] [varchar](50) NULL,
	[PersonalPCNo] [varchar](50) NULL,
	[PersonalProvidentFundAccount] [varchar](50) NULL,
	[Birthplace] [varchar](50) NULL,
	[DimissionDate] [date] NULL,
	[CreatorTime] [datetime] NULL,
	[CreatorUserId] [varchar](50) NULL,
	[LastModifyTime] [datetime] NULL,
	[LastModifyUserId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
	[DeleteUserId] [varchar](500) NULL,
 CONSTRAINT [PK_SYS_USER] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'Account'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'RealName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'呢称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'NickName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'头像' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'HeadIcon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'Gender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'Birthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'MobilePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'WeChat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主管主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'ManagerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安全级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'SecurityLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'个性签名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'Signature'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'DepartmentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'DutyId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否管理员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'IsAdministrator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入职日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'EntryDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转正日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'TurnPositiveDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'EnterpriseJobNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'IDNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学历' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'EducationalBackground'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计薪规则' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'CalculateSalaryRule'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'个人电脑号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'PersonalPCNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'个人公积金账号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'PersonalProvidentFundAccount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'籍贯' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'Birthplace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'离职日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'DimissionDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'LastModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'LastModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'DeleteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'DeleteUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User'
GO
INSERT [dbo].[Sys_User] ([Id], [Account], [RealName], [NickName], [Password], [HeadIcon], [Gender], [Birthday], [MobilePhone], [Email], [WeChat], [ManagerId], [SecurityLevel], [Signature], [DepartmentId], [DutyId], [IsAdministrator], [SortCode], [DeleteMark], [EnabledMark], [Description], [EntryDate], [TurnPositiveDate], [EnterpriseJobNumber], [IDNumber], [EducationalBackground], [CalculateSalaryRule], [PersonalPCNo], [PersonalProvidentFundAccount], [Birthplace], [DimissionDate], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'sysadmin', N'超级管理员', N'超级管理员', N'e10adc3949ba59abbe56e057f20f883e', NULL, 1, CAST(0x52190B00 AS Date), N'13417382662', N'llj@xydglobal.com', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_User] ([Id], [Account], [RealName], [NickName], [Password], [HeadIcon], [Gender], [Birthday], [MobilePhone], [Email], [WeChat], [ManagerId], [SecurityLevel], [Signature], [DepartmentId], [DutyId], [IsAdministrator], [SortCode], [DeleteMark], [EnabledMark], [Description], [EntryDate], [TurnPositiveDate], [EnterpriseJobNumber], [IDNumber], [EducationalBackground], [CalculateSalaryRule], [PersonalPCNo], [PersonalProvidentFundAccount], [Birthplace], [DimissionDate], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'4be0ae03e2354dabb5f5247687462b88', N'admin', N'管理员', NULL, N'e10adc3949ba59abbe56e057f20f883e', NULL, 1, NULL, N'12258585874', N'56565@q.com', NULL, NULL, NULL, NULL, N'8cb9613d17064c5dba59a96044e64390', N'67e738cd17f946f9b16ae18262b078a8', 0, 0, 0, 1, N'xxxxxx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL, CAST(0x0000AAB800C2A870 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AAB800D84D7C AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
/****** Object:  Table [dbo].[Sys_Role]    Script Date: 08/29/2019 15:33:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Role](
	[Id] [varchar](50) NOT NULL,
	[OrganizeId] [varchar](50) NULL,
	[Category] [int] NOT NULL,
	[EnCode] [varchar](50) NULL,
	[FullName] [varchar](50) NULL,
	[Type] [int] NULL,
	[AllowEdit] [bit] NOT NULL,
	[AllowDelete] [bit] NOT NULL,
	[SortCode] [int] NOT NULL,
	[DeleteMark] [bit] NOT NULL,
	[EnabledMark] [bit] NOT NULL,
	[Description] [varchar](500) NULL,
	[AddTime] [datetime] NULL,
	[AddUserId] [varchar](50) NULL,
	[LastModifyTime] [datetime] NULL,
	[LastModifyUserId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
	[DeleteUserId] [varchar](500) NULL,
 CONSTRAINT [PK_SYS_ROLE] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'OrganizeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类:1-角色2-岗位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'Category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'EnCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'FullName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许编辑' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'AllowEdit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'AllowDelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'AddTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'AddUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'LastModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'LastModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'DeleteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'DeleteUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role'
GO
INSERT [dbo].[Sys_Role] ([Id], [OrganizeId], [Category], [EnCode], [FullName], [Type], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'aeaa131bd47f40179f391028c20fd7d7', N'8cb9613d17064c5dba59a96044e64390', 1, N'001', N'管理员', 1, 1, 1, 1, 0, 1, NULL, CAST(0x0000AAB800C14E5C AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AAB800DCAF9C AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Role] ([Id], [OrganizeId], [Category], [EnCode], [FullName], [Type], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'67e738cd17f946f9b16ae18262b078a8', N'8cb9613d17064c5dba59a96044e64390', 2, N'001', N'主管', NULL, 0, 0, 1, 0, 1, NULL, CAST(0x0000AAB800C18DA0 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[Sys_Permission]    Script Date: 08/29/2019 15:33:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Permission](
	[Id] [varchar](50) NOT NULL,
	[ItemType] [int] NOT NULL,
	[ItemId] [varchar](50) NOT NULL,
	[ObjectType] [int] NOT NULL,
	[ObjectId] [varchar](50) NOT NULL,
	[SortCode] [int] NOT NULL,
	[AddTime] [datetime] NULL,
	[AddUserId] [varchar](50) NULL,
 CONSTRAINT [PK_SYS_ROLEAUTHORIZE] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色授权主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Permission', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目类型1-模块2-按钮3-列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Permission', @level2type=N'COLUMN',@level2name=N'ItemType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Permission', @level2type=N'COLUMN',@level2name=N'ItemId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对象分类1-角色2-用户-3部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Permission', @level2type=N'COLUMN',@level2name=N'ObjectType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对象主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Permission', @level2type=N'COLUMN',@level2name=N'ObjectId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Permission', @level2type=N'COLUMN',@level2name=N'SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Permission', @level2type=N'COLUMN',@level2name=N'AddTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Permission', @level2type=N'COLUMN',@level2name=N'AddUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色授权表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Permission'
GO
INSERT [dbo].[Sys_Permission] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [AddTime], [AddUserId]) VALUES (N'0cd2d2741c0849c782191f7a2e10db07', 2, N'FD3D073C-4F88-467A-AE3B-CDD060952CE6', 1, N'aeaa131bd47f40179f391028c20fd7d7', 0, CAST(0x0000AAB800DCAF9F AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_Permission] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [AddTime], [AddUserId]) VALUES (N'1431cac584c5417f80c11de411c71024', 2, N'f9913701-219f-4386-aa91-311f7a3c4b19', 1, N'aeaa131bd47f40179f391028c20fd7d7', 0, CAST(0x0000AAB800DCAF9E AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_Permission] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [AddTime], [AddUserId]) VALUES (N'1e8e9f6731564ae094be507448b16ba3', 2, N'b86d0e71564843a6b0c69561d4114491', 1, N'aeaa131bd47f40179f391028c20fd7d7', 0, CAST(0x0000AAB800DCAF9F AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_Permission] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [AddTime], [AddUserId]) VALUES (N'29c3493019fc42598a03c35cd9e43a5e', 2, N'D4FCAFED-7640-449E-80B7-622DDACD5012', 1, N'aeaa131bd47f40179f391028c20fd7d7', 0, CAST(0x0000AAB800DCAF9F AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_Permission] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [AddTime], [AddUserId]) VALUES (N'46211de24997435eaa793c06ddbea144', 2, N'78283a8e-c894-487c-85ec-a4b664e807a3', 1, N'aeaa131bd47f40179f391028c20fd7d7', 0, CAST(0x0000AAB800DCAF9E AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_Permission] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [AddTime], [AddUserId]) VALUES (N'4ce2bf9ba1e145f09f0afa0ea828f129', 1, N'64A1C550-2C61-4A8C-833D-ACD0C012260F', 1, N'aeaa131bd47f40179f391028c20fd7d7', 0, CAST(0x0000AAB800DCAF9F AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_Permission] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [AddTime], [AddUserId]) VALUES (N'524048c0c5ce4d299ffedbe86abd06de', 2, N'8f2af952915d4f72bc51e8ffbdc50974', 1, N'aeaa131bd47f40179f391028c20fd7d7', 0, CAST(0x0000AAB800DCAF9F AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_Permission] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [AddTime], [AddUserId]) VALUES (N'736f2110f00c4516bf055d4f6baead04', 1, N'462027E0-0848-41DD-BCC3-025DCAE65555', 1, N'aeaa131bd47f40179f391028c20fd7d7', 0, CAST(0x0000AAB800DCAF9D AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_Permission] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [AddTime], [AddUserId]) VALUES (N'8165f0625cc44b5f8718df478a5471b1', 1, N'fc561b44c12a4b239b4d5923c09bc689', 1, N'aeaa131bd47f40179f391028c20fd7d7', 0, CAST(0x0000AAB800DCAF9E AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_Permission] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [AddTime], [AddUserId]) VALUES (N'84212693160849e38b83690a06b723a1', 2, N'E29FCBA7-F848-4A8B-BC41-A3C668A9005D', 1, N'aeaa131bd47f40179f391028c20fd7d7', 0, CAST(0x0000AAB800DCAF9F AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_Permission] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [AddTime], [AddUserId]) VALUES (N'998dc75810764cdaaf1c6f9beac31277', 2, N'32e26049-8ded-46a1-be18-7d321892b5f6', 1, N'aeaa131bd47f40179f391028c20fd7d7', 0, CAST(0x0000AAB800DCAF9E AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_Permission] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [AddTime], [AddUserId]) VALUES (N'9f0b10a54fc74a66bb3fb116a8fb3a12', 2, N'9FD543DB-C5BB-4789-ACFF-C5865AFB032C', 1, N'aeaa131bd47f40179f391028c20fd7d7', 0, CAST(0x0000AAB800DCAF9F AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_Permission] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [AddTime], [AddUserId]) VALUES (N'a51d6dcb304a4ce8a9c52b368b908330', 1, N'8e8a1bd4-4fe3-483d-941d-a165c1c52944', 1, N'aeaa131bd47f40179f391028c20fd7d7', 0, CAST(0x0000AAB800DCAF9E AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_Permission] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [AddTime], [AddUserId]) VALUES (N'c5397c5850e54174987d7fc551d72c78', 2, N'f2e416fa63bd4e23ba99e3768758e606', 1, N'aeaa131bd47f40179f391028c20fd7d7', 0, CAST(0x0000AAB800DCAF9E AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_Permission] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [AddTime], [AddUserId]) VALUES (N'c7a0fb23929a4b8391367dfed6f5c10b', 2, N'4afc984c-3a1b-4e84-98fb-61ec08c31f5c', 1, N'aeaa131bd47f40179f391028c20fd7d7', 0, CAST(0x0000AAB800DCAF9E AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_Permission] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [AddTime], [AddUserId]) VALUES (N'c80b37585b784a5d8a947bb49f04ae61', 2, N'b96426a8d6d24ceabc8f8d5c21b374d2', 1, N'aeaa131bd47f40179f391028c20fd7d7', 0, CAST(0x0000AAB800DCAF9F AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_Permission] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [AddTime], [AddUserId]) VALUES (N'd0cc9422663c4714a2265b11798221ee', 2, N'85F5212F-E321-4124-B155-9374AA5D9C10', 1, N'aeaa131bd47f40179f391028c20fd7d7', 0, CAST(0x0000AAB800DCAF9F AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_Permission] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [AddTime], [AddUserId]) VALUES (N'daa2dc78ddec42c1af172fabc49adc89', 2, N'48c5f2f0f2f9407ba52725293746c611', 1, N'aeaa131bd47f40179f391028c20fd7d7', 0, CAST(0x0000AAB800DCAF9F AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
/****** Object:  Table [dbo].[Sys_OrganizeManagers]    Script Date: 08/29/2019 15:33:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_OrganizeManagers](
	[Id] [varchar](50) NOT NULL,
	[OrganizeId] [varchar](50) NOT NULL,
	[ManagerId] [varchar](50) NOT NULL,
	[DeleteMark] [bit] NOT NULL,
	[AddTime] [datetime] NULL,
	[AddUserId] [varchar](50) NULL,
 CONSTRAINT [PK_Sys_OrganizeManagers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_OrganizeManagers', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织机构主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_OrganizeManagers', @level2type=N'COLUMN',@level2name=N'OrganizeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'负责人主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_OrganizeManagers', @level2type=N'COLUMN',@level2name=N'ManagerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标记（0：否，1：是）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_OrganizeManagers', @level2type=N'COLUMN',@level2name=N'DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_OrganizeManagers', @level2type=N'COLUMN',@level2name=N'AddTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_OrganizeManagers', @level2type=N'COLUMN',@level2name=N'AddUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织机构负责人表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_OrganizeManagers'
GO
/****** Object:  Table [dbo].[Sys_Organize]    Script Date: 08/29/2019 15:33:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Organize](
	[Id] [varchar](50) NOT NULL,
	[ParentId] [varchar](50) NULL,
	[Layers] [int] NULL,
	[EnCode] [varchar](50) NULL,
	[FullName] [varchar](50) NULL,
	[ShortName] [varchar](50) NULL,
	[CategoryId] [varchar](50) NULL,
	[ManagerId] [varchar](50) NULL,
	[TelePhone] [varchar](20) NULL,
	[MobilePhone] [varchar](20) NULL,
	[WeChat] [varchar](50) NULL,
	[Fax] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[AreaId] [varchar](50) NULL,
	[Address] [varchar](500) NULL,
	[AllowEdit] [bit] NOT NULL,
	[AllowDelete] [bit] NOT NULL,
	[SortCode] [int] NOT NULL,
	[DeleteMark] [bit] NOT NULL,
	[EnabledMark] [bit] NOT NULL,
	[Description] [varchar](500) NULL,
	[AddTime] [datetime] NULL,
	[AddUserId] [varchar](50) NULL,
	[LastModifyTime] [datetime] NULL,
	[LastModifyUserId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
	[DeleteUserId] [varchar](500) NULL,
 CONSTRAINT [PK_SYS_ORGANIZE] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'层次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'Layers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'EnCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'FullName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'ShortName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'CategoryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'负责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'ManagerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'TelePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'MobilePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'WeChat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传真' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'Fax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'归属区域' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'AreaId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许编辑' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'AllowEdit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'AllowDelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'AddTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'AddUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'LastModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'LastModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'DeleteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'DeleteUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize'
GO
INSERT [dbo].[Sys_Organize] ([Id], [ParentId], [Layers], [EnCode], [FullName], [ShortName], [CategoryId], [ManagerId], [TelePhone], [MobilePhone], [WeChat], [Fax], [Email], [AreaId], [Address], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'8cb9613d17064c5dba59a96044e64390', N'0', NULL, N'Neewer', N'深圳市纽尔科技有限公司', N'', N'Group', N'', N'', N'', N'', N'', N'', N'', N'', 0, 0, 0, 0, 1, N'', CAST(0x0000AAB800C1208E AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AAB800DF827D AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
/****** Object:  Table [dbo].[Sys_ModuleButton]    Script Date: 08/29/2019 15:33:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_ModuleButton](
	[Id] [varchar](50) NOT NULL,
	[ModuleId] [varchar](50) NULL,
	[ParentId] [varchar](50) NULL,
	[Layers] [int] NOT NULL,
	[EnCode] [varchar](50) NULL,
	[FullName] [varchar](50) NULL,
	[Icon] [varchar](50) NULL,
	[Location] [int] NOT NULL,
	[JsEvent] [varchar](50) NULL,
	[UrlAddress] [varchar](500) NULL,
	[Split] [bit] NOT NULL,
	[IsPublic] [bit] NOT NULL,
	[AllowEdit] [bit] NOT NULL,
	[AllowDelete] [bit] NOT NULL,
	[SortCode] [int] NOT NULL,
	[DeleteMark] [bit] NOT NULL,
	[EnabledMark] [bit] NOT NULL,
	[InitGroup] [nvarchar](100) NULL,
	[Description] [varchar](500) NULL,
	[AddTime] [datetime] NULL,
	[AddUserId] [varchar](50) NULL,
	[LastModifyTime] [datetime] NULL,
	[LastModifyUserId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
	[DeleteUserId] [varchar](50) NULL,
	[EnName] [varchar](100) NULL,
 CONSTRAINT [PK_SYS_MODULEBUTTON] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'按钮主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'ModuleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'层次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'Layers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'EnCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'FullName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'Icon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'位置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'Location'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'事件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'JsEvent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'连接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'UrlAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分开线' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'Split'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公共' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'IsPublic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许编辑' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'AllowEdit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'AllowDelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'初始位置按钮所属分组' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'InitGroup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'AddTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'AddUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'LastModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'LastModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'DeleteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'DeleteUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'英文名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'EnName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块按钮' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton'
GO
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [InitGroup], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId], [EnName]) VALUES (N'9FD543DB-C5BB-4789-ACFF-C5865AFB032C', N'64A1C550-2C61-4A8C-833D-ACD0C012260F', N'0', 1, N'Add', N'新增', N'fa fa-plus', 1, N'btn_add()', N'/SystemManage/Module/Form', 0, 0, 1, 1, 1, 0, 1, NULL, NULL, NULL, NULL, CAST(0x0000A64E01027E86 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'新增')
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [InitGroup], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId], [EnName]) VALUES (N'E29FCBA7-F848-4A8B-BC41-A3C668A9005D', N'64A1C550-2C61-4A8C-833D-ACD0C012260F', N'0', 1, N'Edit', N'编辑', N'fa fa-pencil-square-o', 2, N'btn_edit()', N'/SystemManage/Module/Form', 0, 0, 1, 1, 2, 0, 1, NULL, NULL, NULL, NULL, CAST(0x0000A64E01027772 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'编辑')
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [InitGroup], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId], [EnName]) VALUES (N'85F5212F-E321-4124-B155-9374AA5D9C10', N'64A1C550-2C61-4A8C-833D-ACD0C012260F', N'0', 1, N'Delete', N'删除', N'fa fa-trash-o', 2, N'btn_delete()', N'/SystemManage/Module/DeleteForm', 0, 0, 1, 1, 3, 0, 1, NULL, NULL, NULL, NULL, CAST(0x0000A64E0102867A AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'删除')
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [InitGroup], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId], [EnName]) VALUES (N'D4FCAFED-7640-449E-80B7-622DDACD5012', N'64A1C550-2C61-4A8C-833D-ACD0C012260F', N'0', 1, N'Details', N'查看', N'fa fa-search-plus', 2, N'btn_details()', N'/SystemManage/Module/Details', 1, 0, 1, 1, 4, 0, 1, NULL, NULL, NULL, NULL, CAST(0x0000A64E0102946D AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'查看')
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [InitGroup], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId], [EnName]) VALUES (N'FD3D073C-4F88-467A-AE3B-CDD060952CE6', N'64A1C550-2C61-4A8C-833D-ACD0C012260F', N'0', 1, N'Modulebutton', N'按钮管理', N'fa fa-gavel', 2, N'btn_modulebutton()', N'/SystemManage/ModuleButton/Index', 0, 0, 1, 1, 5, 0, 1, NULL, NULL, NULL, NULL, CAST(0x0000A8E200E0BE2C AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'按钮管理')
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [InitGroup], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId], [EnName]) VALUES (N'239077ff-13e1-4720-84e1-67b6f0276979', N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', N'0', 1, N'Delete', N'删除', N'fa fa-trash-o', 2, N'btn_delete()', N'/SystemManage/Role/DeleteForm', 0, 0, 1, 1, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'删除')
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [InitGroup], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId], [EnName]) VALUES (N'5d708d9d-6ebe-40ea-8589-e3efce9e74ec', N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', N'0', 0, N'Add', N'新增', N'fa fa-plus', 1, N'btn_add()', N'/SystemManage/Role/Form', 0, 0, 1, 1, 1, 0, 1, NULL, NULL, NULL, NULL, CAST(0x0000AA8C010ADB0B AS DateTime), N'c533e6560d63419f8d37494865e53dc9', NULL, NULL, N'Add')
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [InitGroup], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId], [EnName]) VALUES (N'f93763ff-51a1-478d-9585-3c86084c54f3', N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', N'0', 1, N'Details', N'查看', N'fa fa-search-plus', 2, N'btn_details()', N'/SystemManage/Role/Details', 0, 0, 1, 1, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'查看')
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [InitGroup], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId], [EnName]) VALUES (N'ffffe7f8-900c-413a-9970-bee7d6599cce', N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', N'0', 1, N'Edit', N'编辑', N'fa fa-pencil-square-o', 2, N'btn_edit()', N'/SystemManage/Role/Form', 0, 0, 1, 1, 2, 0, 1, NULL, NULL, NULL, NULL, CAST(0x0000A8E200E31E01 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'编辑')
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [InitGroup], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId], [EnName]) VALUES (N'14617a4f-bfef-4bc2-b943-d18d3ff8d22f', N'38CA5A66-C993-4410-AF95-50489B22939C', N'0', 1, N'Delete', N'删除', N'fa fa-trash-o', 2, N'btn_delete()', N'/SystemManage/User/DeleteForm', 0, 0, 1, 1, 3, 0, 1, NULL, NULL, NULL, NULL, CAST(0x0000A64E00EB2BC2 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'删除')
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [InitGroup], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId], [EnName]) VALUES (N'4727adf7-5525-4c8c-9de5-39e49c268349', N'38CA5A66-C993-4410-AF95-50489B22939C', N'0', 0, N'Edit', N'编辑', N'fa fa-pencil-square-o', 2, N'btn_edit()', N'/SystemManage/User/Form', 0, 0, 1, 1, 1, 0, 1, NULL, NULL, NULL, NULL, CAST(0x0000AA49010514CE AS DateTime), N'c533e6560d63419f8d37494865e53dc9', NULL, NULL, N'编辑')
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [InitGroup], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId], [EnName]) VALUES (N'74eecdfb-3bee-405d-be07-27a78219c179', N'38CA5A66-C993-4410-AF95-50489B22939C', N'0', 0, N'Add', N'新增', N'fa fa-plus', 1, N'btn_add()', N'/SystemManage/User/Form', 0, 0, 1, 1, 1, 0, 1, NULL, NULL, NULL, NULL, CAST(0x0000AAAA00F9540B AS DateTime), N'c533e6560d63419f8d37494865e53dc9', NULL, NULL, N'新增')
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [InitGroup], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId], [EnName]) VALUES (N'abfdff21-8ebf-4024-8555-401b4df6acd9', N'38CA5A66-C993-4410-AF95-50489B22939C', N'0', 1, N'Details', N'查看', N'fa fa-search-plus', 2, N'btn_details()', N'/SystemManage/User/Details', 1, 0, 1, 1, 4, 0, 1, NULL, NULL, NULL, NULL, CAST(0x0000A64E00FF345D AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'查看')
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [InitGroup], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId], [EnName]) VALUES (N'38e39592-6e86-42fb-8f72-adea0c82cbc1', N'38CA5A66-C993-4410-AF95-50489B22939C', N'0', 0, N'Revisepassword', N'密码重置', N'fa fa-key', 2, N'btn_revisepassword()', N'/SystemManage/User/RevisePassword', 0, 0, 1, 1, 2, 0, 1, NULL, NULL, CAST(0x0000A64E00EBBF7E AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA4901051DE7 AS DateTime), N'c533e6560d63419f8d37494865e53dc9', NULL, NULL, N'密码重置')
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [InitGroup], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId], [EnName]) VALUES (N'32e26049-8ded-46a1-be18-7d321892b5f6', N'8e8a1bd4-4fe3-483d-941d-a165c1c52944', N'0', 1, N'Edit', N'编辑', N'fa fa-pencil-square-o', 2, N'btn_edit()', N'/SystemManage/Duty/Form', 0, 0, 1, 1, 2, 0, 1, NULL, NULL, NULL, NULL, CAST(0x0000A9BA00BEAF8A AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'编辑')
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [InitGroup], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId], [EnName]) VALUES (N'4afc984c-3a1b-4e84-98fb-61ec08c31f5c', N'8e8a1bd4-4fe3-483d-941d-a165c1c52944', N'0', 1, N'Add', N'新增', N'fa fa-plus', 1, N'btn_add()', N'/SystemManage/Duty/Form', 0, 0, 1, 1, 1, 0, 1, NULL, NULL, NULL, NULL, CAST(0x0000A9BA00BEA9B3 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'新增')
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [InitGroup], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId], [EnName]) VALUES (N'78283a8e-c894-487c-85ec-a4b664e807a3', N'8e8a1bd4-4fe3-483d-941d-a165c1c52944', N'0', 1, N'Delete', N'删除', N'fa fa-trash-o', 2, N'btn_delete()', N'/SystemManage/Duty/DeleteForm', 0, 0, 1, 1, 3, 0, 1, NULL, NULL, NULL, NULL, CAST(0x0000A9BA00BEB384 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'删除')
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [InitGroup], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId], [EnName]) VALUES (N'f9913701-219f-4386-aa91-311f7a3c4b19', N'8e8a1bd4-4fe3-483d-941d-a165c1c52944', N'0', 1, N'Details', N'查看', N'fa fa-search-plus', 2, N'btn_details()', N'/SystemManage/Duty/Details', 0, 0, 1, 1, 4, 0, 1, NULL, NULL, NULL, NULL, CAST(0x0000A9BA00BEB796 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'查看')
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [InitGroup], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId], [EnName]) VALUES (N'aa882ac1c28b48f3a40354842d154e8c', N'38CA5A66-C993-4410-AF95-50489B22939C', N'0', 0, N'MoveDepartment', N'人员移动', N'fa fa-arrows-h', 1, N'btn_move_department()', N'/SystemManage/Organize/TreeControl', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, CAST(0x0000AA4901039BC5 AS DateTime), N'c533e6560d63419f8d37494865e53dc9', CAST(0x0000AAAA00FA0D89 AS DateTime), N'c533e6560d63419f8d37494865e53dc9', NULL, NULL, N'人员移动')
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [InitGroup], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId], [EnName]) VALUES (N'daefc1f885f1473d825ff60e6a2b7c91', N'38CA5A66-C993-4410-AF95-50489B22939C', N'0', 0, N'DepartmentManage', N'部门管理', N'fa fa-gavel', 1, N'btn_department()', N'/SystemManage/Organize/Index', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, CAST(0x0000AA490103F364 AS DateTime), N'c533e6560d63419f8d37494865e53dc9', NULL, NULL, NULL, NULL, N'部门管理')
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [InitGroup], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId], [EnName]) VALUES (N'f2e416fa63bd4e23ba99e3768758e606', N'fc561b44c12a4b239b4d5923c09bc689', N'0', 0, N'Add', N'新增', N'fa fa-plus', 1, N'btn_add()', N'/SystemManage/ItemsType/Index', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, CAST(0x0000AA4C01292955 AS DateTime), N'c533e6560d63419f8d37494865e53dc9', NULL, NULL, NULL, NULL, N'新增')
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [InitGroup], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId], [EnName]) VALUES (N'8f2af952915d4f72bc51e8ffbdc50974', N'fc561b44c12a4b239b4d5923c09bc689', N'0', 0, N'Itemstype', N'分类管理', NULL, 1, N'btn_itemstype()', N'/SystemManage/ItemsData/Index', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, CAST(0x0000AA4C01294637 AS DateTime), N'c533e6560d63419f8d37494865e53dc9', CAST(0x0000AA4C01294F7B AS DateTime), N'c533e6560d63419f8d37494865e53dc9', NULL, NULL, N'分类管理')
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [InitGroup], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId], [EnName]) VALUES (N'b86d0e71564843a6b0c69561d4114491', N'fc561b44c12a4b239b4d5923c09bc689', N'0', 0, N'Edit', N'编辑', N'fa fa-pencil-square-o', 2, N'btn_edit()', N'/SystemManage/ItemsData/Form', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, CAST(0x0000AA4C0129755C AS DateTime), N'c533e6560d63419f8d37494865e53dc9', NULL, NULL, NULL, NULL, N'编辑')
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [InitGroup], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId], [EnName]) VALUES (N'b96426a8d6d24ceabc8f8d5c21b374d2', N'fc561b44c12a4b239b4d5923c09bc689', N'0', 0, N'Delete', N'删除', N'fa fa-trash-o', 2, N'btn_delete()', N'/SystemManage/ItemsData/DeleteForm', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, CAST(0x0000AA4C01299332 AS DateTime), N'c533e6560d63419f8d37494865e53dc9', NULL, NULL, NULL, NULL, N'删除')
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [InitGroup], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId], [EnName]) VALUES (N'48c5f2f0f2f9407ba52725293746c611', N'fc561b44c12a4b239b4d5923c09bc689', N'0', 0, N'Details', N'查看', N'fa fa-search-plus', 2, N'btn_details()', N'/SystemManage/ItemsData/Details', 0, 0, 0, 0, 5, 0, 1, NULL, NULL, CAST(0x0000AA4C0129AE03 AS DateTime), N'c533e6560d63419f8d37494865e53dc9', NULL, NULL, NULL, NULL, N'查看')
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [InitGroup], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId], [EnName]) VALUES (N'11e098ce28bd4d51a0e72e16dd55e4c0', N'38CA5A66-C993-4410-AF95-50489B22939C', N'0', 0, N'Export', N'导出', N'glyphicon glyphicon-export', 1, N'btn_export()', N'/SystemManage/User/PostExportData', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, CAST(0x0000AA5B009FD5A6 AS DateTime), N'c533e6560d63419f8d37494865e53dc9', CAST(0x0000AA79010DDEF3 AS DateTime), N'c533e6560d63419f8d37494865e53dc9', NULL, NULL, N'导出')
/****** Object:  Table [dbo].[Sys_Module]    Script Date: 08/29/2019 15:33:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Module](
	[Id] [varchar](50) NOT NULL,
	[ParentId] [varchar](50) NULL,
	[Layers] [int] NULL,
	[EnCode] [varchar](50) NULL,
	[FullName] [varchar](50) NULL,
	[Icon] [varchar](50) NULL,
	[UrlAddress] [varchar](500) NULL,
	[Target] [varchar](50) NULL,
	[IsMenu] [bit] NOT NULL,
	[IsExpand] [bit] NOT NULL,
	[IsPublic] [bit] NOT NULL,
	[AllowEdit] [bit] NOT NULL,
	[AllowDelete] [bit] NOT NULL,
	[SortCode] [int] NOT NULL,
	[DeleteMark] [bit] NOT NULL,
	[EnabledMark] [bit] NOT NULL,
	[Description] [varchar](500) NULL,
	[AddTime] [datetime] NULL,
	[AddUserId] [varchar](50) NULL,
	[LastModifyTime] [datetime] NULL,
	[LastModifyUserId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
	[DeleteUserId] [varchar](50) NULL,
	[EnName] [varchar](100) NULL,
 CONSTRAINT [PK_SYS_MODULE] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'层次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'Layers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'EnCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'FullName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'Icon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'连接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'UrlAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'Target'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'IsMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'展开' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'IsExpand'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公共' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'IsPublic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许编辑' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'AllowEdit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'AllowDelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'AddTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'AddUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'LastModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'LastModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'DeleteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'DeleteUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'英文名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'EnName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统模块' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module'
GO
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId], [EnName]) VALUES (N'462027E0-0848-41DD-BCC3-025DCAE65555', N'0', NULL, NULL, N'系统管理', N'fa fa-gears', NULL, N'expand', 0, 1, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(0x0000AAAA00F94C27 AS DateTime), N'c533e6560d63419f8d37494865e53dc9', NULL, NULL, N'系统管理')
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId], [EnName]) VALUES (N'64A1C550-2C61-4A8C-833D-ACD0C012260F', N'462027E0-0848-41DD-BCC3-025DCAE65555', NULL, NULL, N'系统菜单', NULL, N'/SystemManage/Module/Index', N'iframe', 1, 0, 0, 0, 0, 4, 0, 1, N'测试', NULL, NULL, CAST(0x0000AA4901076B28 AS DateTime), N'c533e6560d63419f8d37494865e53dc9', NULL, NULL, N'系统菜单')
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId], [EnName]) VALUES (N'38CA5A66-C993-4410-AF95-50489B22939C', N'462027E0-0848-41DD-BCC3-025DCAE65555', NULL, NULL, N'组织架构', NULL, N'/SystemManage/User/Index', N'iframe', 1, 0, 0, 1, 1, 1, 0, 1, NULL, NULL, NULL, CAST(0x0000AA4801245088 AS DateTime), N'c533e6560d63419f8d37494865e53dc9', NULL, NULL, N'组织架构')
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId], [EnName]) VALUES (N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', N'462027E0-0848-41DD-BCC3-025DCAE65555', NULL, NULL, N'角色管理', NULL, N'/SystemManage/Role/Index', N'iframe', 1, 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(0x0000AA8C010AA11F AS DateTime), N'050C5C14490947D6B7459909705ED482', NULL, NULL, N'角色管理')
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId], [EnName]) VALUES (N'8e8a1bd4-4fe3-483d-941d-a165c1c52944', N'462027E0-0848-41DD-BCC3-025DCAE65555', NULL, NULL, N'岗位管理', NULL, N'/SystemManage/Duty/Index', N'iframe', 0, 0, 0, 1, 1, 3, 0, 1, NULL, CAST(0x0000A9BA00BC7AEE AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, N'岗位管理')
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId], [EnName]) VALUES (N'fc561b44c12a4b239b4d5923c09bc689', N'462027E0-0848-41DD-BCC3-025DCAE65555', NULL, NULL, N'数据字典', NULL, N'/SystemManage/ItemsData/Index', N'iframe', 0, 0, 0, 0, 0, 4, 0, 1, NULL, CAST(0x0000AA4C01211172 AS DateTime), N'c533e6560d63419f8d37494865e53dc9', CAST(0x0000AA690117F41C AS DateTime), N'c533e6560d63419f8d37494865e53dc9', NULL, NULL, N'数据字典')
/****** Object:  Table [dbo].[Sys_Log]    Script Date: 08/29/2019 15:33:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Log](
	[Id] [varchar](50) NOT NULL,
	[Date] [datetime] NULL,
	[Account] [varchar](50) NULL,
	[NickName] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[IPAddress] [varchar](50) NULL,
	[IPAddressName] [varchar](50) NULL,
	[ModuleId] [varchar](50) NULL,
	[ModuleName] [varchar](50) NULL,
	[Result] [bit] NULL,
	[Description] [varchar](500) NULL,
	[AddTime] [datetime] NULL,
	[AddUserId] [varchar](50) NULL,
 CONSTRAINT [PK_SYS_LOG] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'Account'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'NickName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'IPAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP所在城市' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'IPAddressName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统模块Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'ModuleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统模块' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'ModuleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'Result'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'AddTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'AddUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统日志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log'
GO
/****** Object:  Table [dbo].[Sys_ItemsDetail]    Script Date: 08/29/2019 15:33:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_ItemsDetail](
	[Id] [varchar](128) NOT NULL,
	[ItemId] [varchar](128) NULL,
	[ParentId] [varchar](128) NULL,
	[ItemCode] [nvarchar](max) NULL,
	[ItemName] [nvarchar](max) NULL,
	[SimpleSpelling] [nvarchar](max) NULL,
	[IsDefault] [bit] NOT NULL,
	[Layers] [int] NOT NULL,
	[SortCode] [int] NOT NULL,
	[DeleteMark] [bit] NOT NULL,
	[EnabledMark] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[AddTime] [datetime] NULL,
	[AddUserId] [nvarchar](max) NULL,
	[LastModifyTime] [datetime] NULL,
	[LastModifyUserId] [nvarchar](max) NULL,
	[DeleteTime] [datetime] NULL,
	[DeleteUserId] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Sys_ItemsDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'明细主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主表主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'ItemId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'ItemCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'ItemName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简拼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'SimpleSpelling'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'IsDefault'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'层次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'Layers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'AddTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'AddUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'LastModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'LastModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'DeleteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'DeleteUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选项明细表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail'
GO
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'0096ad81-4317-486e-9144-a6a02999ff19', N'2748F35F-4EE2-417C-A907-3453146AAF67', N'0', N'4', N'护照', N'x', 0, 0, 4, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'04aba88d-f09b-46c6-bd90-a38471399b0e', N'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE', N'0', N'2', N'业务角色', N'x', 0, 0, 2, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'1950efdf-8685-4341-8d2c-ac85ac7addd0', NULL, NULL, N'1', N'小学', NULL, 0, 0, 2, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', CAST(0x0000AA4C0129BCA1 AS DateTime), N'sysadmin', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'19EE595A-E775-409D-A48F-B33CF9F262C7', N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', N'0', N'WorkGroup', N'小组', N'x', 0, 0, 7, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'24e39617-f04e-4f6f-9209-ad71e870e7c6', N'9a7079bd-0660-4549-9c2d-db5e8616619f', N'0', N'Submit', N'提交', N'x', 0, 0, 7, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'27e85cb8-04e7-447b-911d-dd1e97dfab83', N'0DF5B725-5FB8-487F-B0E4-BC563A77EB04', N'0', N'Oracle', N'Oracle', N'x', 0, 0, 2, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'2B540AC5-6E64-4688-BB60-E0C01DFA982C', N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', N'0', N'SubCompany', N'子公司', N'x', 0, 0, 4, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'2C3715AC-16F7-48FC-AB40-B0931DB1E729', N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', N'0', N'Area', N'区域', N'x', 0, 0, 2, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'34222d46-e0c6-446e-8150-dbefc47a1d5f', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', N'0', N'6', N'本科', N'x', 0, 0, 6, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'34a642b2-44d4-485f-b3fc-6cce24f68b0f', N'0DF5B725-5FB8-487F-B0E4-BC563A77EB04', N'0', N'MySql', N'MySql', N'x', 0, 0, 3, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'355ad7a4-c4f8-4bd3-9c72-ff07983da0f0', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', N'0', N'9', N'其他', N'x', 0, 0, 9, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'392f88a8-02c2-49eb-8aed-b2acf474272a', N'9a7079bd-0660-4549-9c2d-db5e8616619f', N'0', N'Update', N'修改', N'x', 0, 0, 6, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'3c884a03-4f34-4150-b134-966387f1de2a', N'9a7079bd-0660-4549-9c2d-db5e8616619f', N'0', N'Exit', N'退出', N'x', 0, 0, 2, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'3f280e2b-92f6-466c-8cc3-d7c8ff48cc8d', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', N'0', N'7', N'硕士', N'x', 0, 0, 7, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'41053517-215d-4e11-81cd-367c0e9578d7', N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', N'0', N'3', N'通过', N'x', 0, 0, 3, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'433511a9-78bd-41a0-ab25-e4d4b3423055', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, N'1', N'初中', NULL, 0, 0, 2, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', CAST(0x0000AAB800D8DA4F AS DateTime), N'sysadmin', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'486a82e3-1950-425e-b2ce-b5d98f33016a', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', N'0', N'5', N'大专', N'x', 0, 0, 5, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'48c4e0f5-f570-4601-8946-6078762db3bf', N'2748F35F-4EE2-417C-A907-3453146AAF67', N'0', N'3', N'军官证', N'x', 0, 0, 3, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'49b68663-ad01-4c43-b084-f98e3e23fee8', N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', N'0', N'7', N'废弃', N'x', 0, 0, 7, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'4c2f2428-2e00-4336-b9ce-5a61f24193f6', N'2748F35F-4EE2-417C-A907-3453146AAF67', N'0', N'2', N'士兵证', N'x', 0, 0, 2, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'582e0b66-2ee9-4885-9f0c-3ce3ebf96e12', N'8CEB2F71-026C-4FA6-9A61-378127AE7320', N'0', N'1', N'已育', N'x', 0, 0, 1, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'5d6def0e-e2a7-48eb-b43c-cc3631f60dd7', N'BDD797C3-2323-4868-9A63-C8CC3437AEAA', N'0', N'1', N'男', N'x', 0, 0, 1, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'63acf96d-6115-4d76-a994-438f59419aad', N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', N'0', N'5', N'退回', N'x', 0, 0, 5, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'643209c8-931b-4641-9e04-b8bdd11800af', N'9a7079bd-0660-4549-9c2d-db5e8616619f', N'0', N'Login', N'登录', N'x', 0, 0, 1, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'738edf2a-d59f-4992-97ef-d847db23bcb8', N'FA7537E2-1C64-4431-84BF-66158DD63269', N'0', N'1', N'已婚', N'x', 0, 0, 1, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'795f2695-497a-4f5e-ab1d-706095c1edb9', N'9a7079bd-0660-4549-9c2d-db5e8616619f', N'0', N'Other', N'其他', N'x', 0, 0, 0, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'7a6d1bc4-3ec7-4c57-be9b-b4c97d60d5f6', N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', N'0', N'1', N'草稿', N'x', 0, 0, 1, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'7c1135be-0148-43eb-ae49-62a1e16ebbe3', N'FA7537E2-1C64-4431-84BF-66158DD63269', N'0', N'5', N'其他', N'x', 0, 0, 5, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'7fc8fa11-4acf-409a-a771-aaf1eb81e814', N'9a7079bd-0660-4549-9c2d-db5e8616619f', N'0', N'Exception', N'异常', N'x', 0, 0, 8, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'822baf7c-abdb-4257-9b78-1f550806f544', N'BDD797C3-2323-4868-9A63-C8CC3437AEAA', N'0', N'0', N'女', N'x', 0, 0, 2, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'8b7b38bf-07c5-4f71-a853-41c5add4a94e', N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', N'0', N'6', N'完成', N'x', 0, 0, 6, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'930b8de2-049f-4753-b9fd-87f484911ee4', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', N'0', N'8', N'博士', N'x', 0, 0, 8, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'9b6a2225-6138-4cf2-9845-1bbecdf9b3ed', N'8CEB2F71-026C-4FA6-9A61-378127AE7320', N'0', N'3', N'其他', N'x', 0, 0, 3, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'a13ccf0d-ac8f-44ac-a522-4a54edf1f0fa', N'9a7079bd-0660-4549-9c2d-db5e8616619f', N'0', N'Delete', N'删除', N'x', 0, 0, 5, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'a4974810-d88d-4d54-82cc-fd779875478f', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', N'0', N'4', N'中专', N'x', 0, 0, 4, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'A64EBB80-6A24-48AF-A10E-B6A532C32CA6', N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', N'0', N'Department', N'部门', N'x', 0, 0, 5, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'a6f271f9-8653-4c5c-86cf-4cd00324b3c3', N'FA7537E2-1C64-4431-84BF-66158DD63269', N'0', N'4', N'丧偶', N'x', 0, 0, 4, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'a7c4aba2-a891-4558-9b0a-bd7a1100a645', N'FA7537E2-1C64-4431-84BF-66158DD63269', N'0', N'2', N'未婚', N'x', 0, 0, 2, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'acb128a6-ff63-4e25-b1e8-0a336ed3ab18', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, N'3', N'高中', NULL, 0, 0, 3, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', CAST(0x0000AA4C012A857A AS DateTime), N'sysadmin', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'B97BD7F5-B212-40C1-A1F7-DD9A2E63EEF2', N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', N'0', N'Group', N'集团', N'x', 0, 0, 1, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'cc6daa5c-a71c-4b2c-9a98-336bc3ee13c8', N'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE', N'0', N'3', N'其他角色', N'x', 0, 0, 3, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'ccc8e274-75da-4eb8-bed0-69008ab7c41c', N'9a7079bd-0660-4549-9c2d-db5e8616619f', N'0', N'Visit', N'访问', N'x', 0, 0, 3, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'ce340c73-5048-4940-b86e-e3b3d53fdb2c', N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', N'0', N'2', N'提交', N'x', 0, 0, 2, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'D082BDB9-5C34-49BF-BD51-4E85D7BFF646', N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', N'0', N'Company', N'公司', N'x', 0, 0, 3, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'D1F439B9-D80E-4547-9EF0-163391854AB5', N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', N'0', N'SubDepartment', N'子部门', N'x', 0, 0, 6, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'd69cb819-2bb3-4e1d-9917-33b9a439233d', N'2748F35F-4EE2-417C-A907-3453146AAF67', N'0', N'1', N'身份证', N'x', 0, 0, 1, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'de2167f3-40fe-4bf7-b8cb-5b1c554bad7a', N'8CEB2F71-026C-4FA6-9A61-378127AE7320', N'0', N'2', N'未育', N'x', 0, 0, 2, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'e1979a4f-7fc1-42b9-a0e2-52d7059e8fb9', N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', N'0', N'4', N'待审', N'x', 0, 0, 4, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'e5079bae-a8c0-4209-9019-6a2b4a3a7dac', N'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE', N'0', N'1', N'系统角色', N'x', 0, 0, 1, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'e545061c-93fd-4ca2-ab29-b43db9db798b', N'9a7079bd-0660-4549-9c2d-db5e8616619f', N'0', N'Create', N'新增', N'x', 0, 0, 4, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'f9609400-7caf-49af-ae3c-7671a9292fb3', N'FA7537E2-1C64-4431-84BF-66158DD63269', N'0', N'3', N'离异', N'x', 0, 0, 3, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [AddTime], [AddUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'fa6c1873-888c-4b70-a2cc-59fccbb22078', N'0DF5B725-5FB8-487F-B0E4-BC563A77EB04', N'0', N'SqlServer', N'SqlServer', N'x', 0, 0, 1, 0, 1, N'xx', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830', NULL, N'2019-05-13 17:57:41.830')
/****** Object:  ForeignKey [FK_Sys_ItemsDetail_Sys_Items]    Script Date: 08/29/2019 15:33:15 ******/
ALTER TABLE [dbo].[Sys_ItemsDetail]  WITH CHECK ADD  CONSTRAINT [FK_Sys_ItemsDetail_Sys_Items] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Sys_Items] ([Id])
GO
ALTER TABLE [dbo].[Sys_ItemsDetail] CHECK CONSTRAINT [FK_Sys_ItemsDetail_Sys_Items]
GO
