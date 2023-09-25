USE [Bravo8R3_Data]
GO

/****** Object:  Table [dbo].[B20Car]    Script Date: 10/20/2022 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[B20Car]
(
	[Id] [int] NOT NULL,
	[ParentId] [int] NOT NULL,
	[IsGroup] [bit] NOT NULL,
	[BuiltinOrder] [smallint] NOT NULL,
	[CarCode] [dbo].[CodeType] NOT NULL,
	[CarName] [nvarchar](192) NOT NULL,
	[Driver] [nvarchar](192) NOT NULL,
	[LicensePlates] [varchar](24) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [smalldatetime] NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedAt] [smalldatetime] NOT NULL,
	[timestamp] [timestamp] NOT NULL,

 CONSTRAINT [PK_B20Car] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[B20Car] ADD  CONSTRAINT [DF_B20Car_Id]  DEFAULT (NEXT VALUE FOR [dbo].[CAT_Seq]) FOR [Id]
GO

ALTER TABLE [dbo].[B20Car] ADD  CONSTRAINT [DF_B20Car_ParentId]  DEFAULT ((-1)) FOR [ParentId]
GO

ALTER TABLE [dbo].[B20Car] ADD  CONSTRAINT [DF_B20Car_IsGroup]  DEFAULT ((0)) FOR [IsGroup]
GO

ALTER TABLE [dbo].[B20Car] ADD  CONSTRAINT [DF_B20Car_BuiltinOrder]  DEFAULT ((0)) FOR [BuiltinOrder]
GO

ALTER TABLE [dbo].[B20Car] ADD  CONSTRAINT [DF_B20Car_CarCode]  DEFAULT ('') FOR [CarCode]
GO

ALTER TABLE [dbo].[B20Car] ADD  CONSTRAINT [DF_B20Car_CarName]  DEFAULT ('') FOR [CarName]
GO

ALTER TABLE [dbo].[B20Car] ADD  CONSTRAINT [DF_B20Car_Driver]  DEFAULT ('') FOR [Driver]
GO

ALTER TABLE [dbo].[B20Car] ADD  CONSTRAINT [DF_B20Car_LicensePlates]  DEFAULT ('') FOR [LicensePlates]
GO

ALTER TABLE [dbo].[B20Bank] ADD  CONSTRAINT [DF_B20Bank_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO

ALTER TABLE [dbo].[B20Bank] ADD  CONSTRAINT [DF_B20Bank_CreatedBy]  DEFAULT ((-1)) FOR [CreatedBy]
GO

ALTER TABLE [dbo].[B20Bank] ADD  CONSTRAINT [DF_B20Bank_CreatedAt]  DEFAULT (getutcdate()) FOR [CreatedAt]
GO

ALTER TABLE [dbo].[B20Bank] ADD  CONSTRAINT [DF_B20Bank_ModifiedBy]  DEFAULT ((-1)) FOR [ModifiedBy]
GO

ALTER TABLE [dbo].[B20Bank] ADD  CONSTRAINT [DF_B20Bank_ModifiedAt]  DEFAULT (getutcdate()) FOR [ModifiedAt]
GO


