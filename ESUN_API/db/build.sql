USE [ESUN]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 2024/11/22 下午 05:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[CompanyCode] [varchar](6) NOT NULL,
	[CompanyName] [nvarchar](50) NOT NULL,
	[IndustryId] [uniqueidentifier] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[ModifyTime] [datetime] NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Industry]    Script Date: 2024/11/22 下午 05:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Industry](
	[Id] [uniqueidentifier] NOT NULL,
	[IndustryName] [nvarchar](50) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[ModifyTime] [datetime] NULL,
 CONSTRAINT [PK_Industry] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Revenue]    Script Date: 2024/11/22 下午 05:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Revenue](
	[Id] [uniqueidentifier] NOT NULL,
	[PublishDate] [char](7) NOT NULL,
	[Year_Date] [char](5) NOT NULL,
	[CompanyCode] [varchar](6) NOT NULL,
	[Revenue_CurrentMonth] [bigint] NULL,
	[Revenue_PreviousMonth] [bigint] NULL,
	[Revenue_SameMonthLastYear] [bigint] NULL,
	[Revenue_MonthOverMonthGrowthPct] [float] NULL,
	[Revenue_YearOverYearGrowthPct] [float] NULL,
	[CumulativeRevenue_CurrentMonth] [bigint] NULL,
	[CumulativeRevenue_LastYear] [bigint] NULL,
	[CumulativeRevenue_PeriodOverPeriodGrowthPct] [float] NULL,
	[Memo] [nvarchar](max) NULL,
	[CreateTime] [datetime] NOT NULL,
	[ModifyTime] [datetime] NULL,
 CONSTRAINT [PK_Revenue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1101  ', N'台泥', N'0bf25136-c514-4521-9641-e863c1565ea2', CAST(N'2024-11-18T16:47:08.327' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1102  ', N'亞泥', N'0bf25136-c514-4521-9641-e863c1565ea2', CAST(N'2024-11-18T16:47:08.337' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1103  ', N'嘉泥', N'0bf25136-c514-4521-9641-e863c1565ea2', CAST(N'2024-11-18T16:47:08.340' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1104  ', N'環泥', N'0bf25136-c514-4521-9641-e863c1565ea2', CAST(N'2024-11-18T16:47:08.343' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1108  ', N'幸福', N'0bf25136-c514-4521-9641-e863c1565ea2', CAST(N'2024-11-18T16:47:08.347' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1109  ', N'信大', N'0bf25136-c514-4521-9641-e863c1565ea2', CAST(N'2024-11-18T16:47:08.350' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1110  ', N'東泥', N'0bf25136-c514-4521-9641-e863c1565ea2', CAST(N'2024-11-18T16:47:08.350' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1201  ', N'味全', N'4e9e4100-343c-4bd5-b446-5686dea6060a', CAST(N'2024-11-18T16:47:08.353' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1203  ', N'味王', N'4e9e4100-343c-4bd5-b446-5686dea6060a', CAST(N'2024-11-18T16:47:08.357' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1210  ', N'大成', N'4e9e4100-343c-4bd5-b446-5686dea6060a', CAST(N'2024-11-18T16:47:08.360' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1213  ', N'大飲', N'4e9e4100-343c-4bd5-b446-5686dea6060a', CAST(N'2024-11-18T16:47:08.363' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1215  ', N'卜蜂', N'4e9e4100-343c-4bd5-b446-5686dea6060a', CAST(N'2024-11-18T16:47:08.367' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1216  ', N'統一', N'4e9e4100-343c-4bd5-b446-5686dea6060a', CAST(N'2024-11-18T16:47:08.373' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1217  ', N'愛之味', N'4e9e4100-343c-4bd5-b446-5686dea6060a', CAST(N'2024-11-18T16:47:08.377' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1218  ', N'泰山', N'4e9e4100-343c-4bd5-b446-5686dea6060a', CAST(N'2024-11-18T16:47:08.380' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1219  ', N'福壽', N'4e9e4100-343c-4bd5-b446-5686dea6060a', CAST(N'2024-11-18T16:47:08.380' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1220  ', N'台榮', N'4e9e4100-343c-4bd5-b446-5686dea6060a', CAST(N'2024-11-18T16:47:08.383' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1225  ', N'福懋油', N'4e9e4100-343c-4bd5-b446-5686dea6060a', CAST(N'2024-11-18T16:47:08.387' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1227  ', N'佳格', N'4e9e4100-343c-4bd5-b446-5686dea6060a', CAST(N'2024-11-18T16:47:08.387' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1229  ', N'聯華', N'4e9e4100-343c-4bd5-b446-5686dea6060a', CAST(N'2024-11-18T16:47:08.390' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1231  ', N'聯華食', N'4e9e4100-343c-4bd5-b446-5686dea6060a', CAST(N'2024-11-18T16:47:08.390' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1232  ', N'大統益', N'4e9e4100-343c-4bd5-b446-5686dea6060a', CAST(N'2024-11-18T16:47:08.393' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1233  ', N'天仁', N'4e9e4100-343c-4bd5-b446-5686dea6060a', CAST(N'2024-11-18T16:47:08.397' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1234  ', N'黑松', N'4e9e4100-343c-4bd5-b446-5686dea6060a', CAST(N'2024-11-18T16:47:08.397' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1235  ', N'興泰', N'4e9e4100-343c-4bd5-b446-5686dea6060a', CAST(N'2024-11-18T16:47:08.400' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1236  ', N'宏亞', N'4e9e4100-343c-4bd5-b446-5686dea6060a', CAST(N'2024-11-18T16:47:08.403' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1256  ', N'鮮活果汁-KY', N'4e9e4100-343c-4bd5-b446-5686dea6060a', CAST(N'2024-11-18T16:47:08.403' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1301  ', N'台塑', N'4faba753-52a8-4be8-bf39-cd19968a3a24', CAST(N'2024-11-18T16:47:08.407' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1303  ', N'南亞', N'4faba753-52a8-4be8-bf39-cd19968a3a24', CAST(N'2024-11-18T16:47:08.407' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1304  ', N'台聚', N'4faba753-52a8-4be8-bf39-cd19968a3a24', CAST(N'2024-11-18T16:47:08.410' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1305  ', N'華夏', N'4faba753-52a8-4be8-bf39-cd19968a3a24', CAST(N'2024-11-18T16:47:08.410' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1307  ', N'三芳', N'4faba753-52a8-4be8-bf39-cd19968a3a24', CAST(N'2024-11-18T16:47:08.413' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1308  ', N'亞聚', N'4faba753-52a8-4be8-bf39-cd19968a3a24', CAST(N'2024-11-18T16:47:08.417' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1309  ', N'台達化', N'4faba753-52a8-4be8-bf39-cd19968a3a24', CAST(N'2024-11-18T16:47:08.417' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1310  ', N'台苯', N'4faba753-52a8-4be8-bf39-cd19968a3a24', CAST(N'2024-11-18T16:47:08.420' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1312  ', N'國喬', N'4faba753-52a8-4be8-bf39-cd19968a3a24', CAST(N'2024-11-18T16:47:08.420' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1313  ', N'聯成', N'4faba753-52a8-4be8-bf39-cd19968a3a24', CAST(N'2024-11-18T16:47:08.423' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1314  ', N'中石化', N'4faba753-52a8-4be8-bf39-cd19968a3a24', CAST(N'2024-11-18T16:47:08.427' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1315  ', N'達新', N'4faba753-52a8-4be8-bf39-cd19968a3a24', CAST(N'2024-11-18T16:47:08.427' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1316  ', N'上曜', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:08.430' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1319  ', N'東陽', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:08.430' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1321  ', N'大洋', N'4faba753-52a8-4be8-bf39-cd19968a3a24', CAST(N'2024-11-18T16:47:08.433' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1323  ', N'永裕', N'4faba753-52a8-4be8-bf39-cd19968a3a24', CAST(N'2024-11-18T16:47:08.437' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1324  ', N'地球', N'4faba753-52a8-4be8-bf39-cd19968a3a24', CAST(N'2024-11-18T16:47:08.437' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1325  ', N'恆大', N'4faba753-52a8-4be8-bf39-cd19968a3a24', CAST(N'2024-11-18T16:47:08.440' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1326  ', N'台化', N'4faba753-52a8-4be8-bf39-cd19968a3a24', CAST(N'2024-11-18T16:47:08.440' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1337  ', N'再生-KY', N'4faba753-52a8-4be8-bf39-cd19968a3a24', CAST(N'2024-11-18T16:47:08.443' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1338  ', N'廣華-KY', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:08.447' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1339  ', N'昭輝', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:08.450' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1340  ', N'勝悅-KY', N'4faba753-52a8-4be8-bf39-cd19968a3a24', CAST(N'2024-11-18T16:47:08.450' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1341  ', N'富林-KY', N'4faba753-52a8-4be8-bf39-cd19968a3a24', CAST(N'2024-11-18T16:47:08.453' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1342  ', N'八貫', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:08.453' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1402  ', N'遠東新', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.457' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1409  ', N'新纖', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.460' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1410  ', N'南染', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.460' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1413  ', N'宏洲', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.460' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1414  ', N'東和', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.463' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1416  ', N'廣豐', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:08.467' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1417  ', N'嘉裕', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.467' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1418  ', N'東華', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.470' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1419  ', N'新紡', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.470' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1423  ', N'利華', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.473' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1432  ', N'大魯閣', N'2f3e70b6-22ca-44e4-b8fa-93b8680c610b', CAST(N'2024-11-18T16:47:08.477' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1434  ', N'福懋', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.477' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1435  ', N'中福', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:08.480' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1436  ', N'華友聯', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:08.480' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1437  ', N'勤益控', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:08.483' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1438  ', N'三地開發', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:08.483' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1439  ', N'雋揚', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:08.487' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1440  ', N'南紡', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.490' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1441  ', N'大東', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.490' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1442  ', N'名軒', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:08.493' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1443  ', N'立益物流', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:08.493' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1444  ', N'力麗', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.497' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1445  ', N'大宇', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.497' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1446  ', N'宏和', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.500' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1447  ', N'力鵬', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.500' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1449  ', N'佳和', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.503' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1451  ', N'年興', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.503' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1452  ', N'宏益', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.507' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1453  ', N'大將', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:08.507' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1454  ', N'台富', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.510' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1455  ', N'集盛', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.510' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1456  ', N'怡華', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:08.513' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1457  ', N'宜進', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.513' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1459  ', N'聯發', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.517' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1460  ', N'宏遠', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.517' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1463  ', N'強盛新', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.520' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1464  ', N'得力', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.520' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1465  ', N'偉全', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.523' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1466  ', N'聚隆', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.523' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1467  ', N'南緯', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.527' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1468  ', N'昶和', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.527' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1470  ', N'大統新創', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.530' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1471  ', N'首利', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:08.530' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1472  ', N'三洋實業', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:08.540' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1473  ', N'台南', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.543' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1474  ', N'弘裕', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.547' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1475  ', N'業旺', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.550' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1476  ', N'儒鴻', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.550' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1477  ', N'聚陽', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:08.553' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1503  ', N'士電', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:08.557' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1504  ', N'東元', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:08.557' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1506  ', N'正道', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:08.560' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1512  ', N'瑞利', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:08.560' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1513  ', N'中興電', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:08.563' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1514  ', N'亞力', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:08.567' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1515  ', N'力山', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:08.567' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1516  ', N'川飛', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:08.570' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1517  ', N'利奇', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:08.570' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1519  ', N'華城', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:08.573' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1521  ', N'大億', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:08.577' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1522  ', N'堤維西', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:08.577' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1524  ', N'耿鼎', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:08.580' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1525  ', N'江申', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:08.580' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1526  ', N'日馳', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:08.583' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1527  ', N'鑽全', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:08.587' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1528  ', N'恩德', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:08.590' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1529  ', N'樂事綠能', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:08.590' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1530  ', N'亞崴', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:08.593' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1531  ', N'高林股', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:08.593' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1532  ', N'勤美', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:08.597' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1533  ', N'車王電', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:08.600' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1535  ', N'中宇', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:08.600' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1536  ', N'和大', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:08.603' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1537  ', N'廣隆', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:08.603' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1538  ', N'正峰', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:08.607' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1539  ', N'巨庭', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:08.610' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1540  ', N'喬福', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:08.610' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1541  ', N'錩泰', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:08.613' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1558  ', N'伸興', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:08.613' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1560  ', N'中砂', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:08.617' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1563  ', N'巧新', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:08.620' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1568  ', N'倉佑', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:08.620' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1582  ', N'信錦', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:08.623' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1583  ', N'程泰', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:08.623' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1587  ', N'吉茂', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:08.627' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1589  ', N'永冠-KY', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:08.627' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1590  ', N'亞德客-KY', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:08.630' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1597  ', N'直得', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:08.630' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1598  ', N'岱宇', N'2f3e70b6-22ca-44e4-b8fa-93b8680c610b', CAST(N'2024-11-18T16:47:08.633' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1603  ', N'華電', N'c5ec134b-d18e-448b-9600-54790ebacc56', CAST(N'2024-11-18T16:47:08.633' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1604  ', N'聲寶', N'c5ec134b-d18e-448b-9600-54790ebacc56', CAST(N'2024-11-18T16:47:08.637' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1605  ', N'華新', N'c5ec134b-d18e-448b-9600-54790ebacc56', CAST(N'2024-11-18T16:47:08.640' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1608  ', N'華榮', N'c5ec134b-d18e-448b-9600-54790ebacc56', CAST(N'2024-11-18T16:47:08.640' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1609  ', N'大亞', N'c5ec134b-d18e-448b-9600-54790ebacc56', CAST(N'2024-11-18T16:47:08.643' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1611  ', N'中電', N'c5ec134b-d18e-448b-9600-54790ebacc56', CAST(N'2024-11-18T16:47:08.643' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1612  ', N'宏泰', N'c5ec134b-d18e-448b-9600-54790ebacc56', CAST(N'2024-11-18T16:47:08.647' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1614  ', N'三洋電', N'c5ec134b-d18e-448b-9600-54790ebacc56', CAST(N'2024-11-18T16:47:08.647' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1615  ', N'大山', N'c5ec134b-d18e-448b-9600-54790ebacc56', CAST(N'2024-11-18T16:47:08.650' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1616  ', N'億泰', N'c5ec134b-d18e-448b-9600-54790ebacc56', CAST(N'2024-11-18T16:47:08.650' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1617  ', N'榮星', N'c5ec134b-d18e-448b-9600-54790ebacc56', CAST(N'2024-11-18T16:47:08.650' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1618  ', N'合機', N'c5ec134b-d18e-448b-9600-54790ebacc56', CAST(N'2024-11-18T16:47:08.653' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1626  ', N'艾美特-KY', N'c5ec134b-d18e-448b-9600-54790ebacc56', CAST(N'2024-11-18T16:47:08.657' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1702  ', N'南僑', N'4e9e4100-343c-4bd5-b446-5686dea6060a', CAST(N'2024-11-18T16:47:08.657' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1707  ', N'葡萄王', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:08.660' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1708  ', N'東鹼', N'fac6ee42-a31a-48e7-bd7b-7ae6165d3b1c', CAST(N'2024-11-18T16:47:08.660' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1709  ', N'和益', N'fac6ee42-a31a-48e7-bd7b-7ae6165d3b1c', CAST(N'2024-11-18T16:47:08.660' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1710  ', N'東聯', N'fac6ee42-a31a-48e7-bd7b-7ae6165d3b1c', CAST(N'2024-11-18T16:47:08.663' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1711  ', N'永光', N'fac6ee42-a31a-48e7-bd7b-7ae6165d3b1c', CAST(N'2024-11-18T16:47:08.667' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1712  ', N'興農', N'fac6ee42-a31a-48e7-bd7b-7ae6165d3b1c', CAST(N'2024-11-18T16:47:08.667' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1713  ', N'國化', N'fac6ee42-a31a-48e7-bd7b-7ae6165d3b1c', CAST(N'2024-11-18T16:47:08.670' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1714  ', N'和桐', N'fac6ee42-a31a-48e7-bd7b-7ae6165d3b1c', CAST(N'2024-11-18T16:47:08.670' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1717  ', N'長興', N'fac6ee42-a31a-48e7-bd7b-7ae6165d3b1c', CAST(N'2024-11-18T16:47:08.670' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1718  ', N'中纖', N'fac6ee42-a31a-48e7-bd7b-7ae6165d3b1c', CAST(N'2024-11-18T16:47:08.673' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1720  ', N'生達', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:08.673' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1721  ', N'三晃', N'fac6ee42-a31a-48e7-bd7b-7ae6165d3b1c', CAST(N'2024-11-18T16:47:08.677' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1722  ', N'台肥', N'fac6ee42-a31a-48e7-bd7b-7ae6165d3b1c', CAST(N'2024-11-18T16:47:08.680' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1723  ', N'中碳', N'fac6ee42-a31a-48e7-bd7b-7ae6165d3b1c', CAST(N'2024-11-18T16:47:08.680' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1725  ', N'元禎', N'fac6ee42-a31a-48e7-bd7b-7ae6165d3b1c', CAST(N'2024-11-18T16:47:08.680' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1726  ', N'永記', N'fac6ee42-a31a-48e7-bd7b-7ae6165d3b1c', CAST(N'2024-11-18T16:47:08.683' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1727  ', N'中華化', N'fac6ee42-a31a-48e7-bd7b-7ae6165d3b1c', CAST(N'2024-11-18T16:47:08.687' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1730  ', N'花仙子', N'fac6ee42-a31a-48e7-bd7b-7ae6165d3b1c', CAST(N'2024-11-18T16:47:08.687' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1731  ', N'美吾華', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:08.690' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1732  ', N'毛寶', N'fac6ee42-a31a-48e7-bd7b-7ae6165d3b1c', CAST(N'2024-11-18T16:47:08.690' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1733  ', N'五鼎', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:08.690' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1734  ', N'杏輝', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:08.693' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1735  ', N'日勝化', N'fac6ee42-a31a-48e7-bd7b-7ae6165d3b1c', CAST(N'2024-11-18T16:47:08.693' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1736  ', N'喬山', N'2f3e70b6-22ca-44e4-b8fa-93b8680c610b', CAST(N'2024-11-18T16:47:08.697' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1737  ', N'臺鹽', N'4e9e4100-343c-4bd5-b446-5686dea6060a', CAST(N'2024-11-18T16:47:08.700' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1752  ', N'南光', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:08.700' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1760  ', N'寶齡富錦', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:08.700' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1762  ', N'中化生', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:08.703' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1773  ', N'勝一', N'fac6ee42-a31a-48e7-bd7b-7ae6165d3b1c', CAST(N'2024-11-18T16:47:08.703' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1776  ', N'展宇', N'fac6ee42-a31a-48e7-bd7b-7ae6165d3b1c', CAST(N'2024-11-18T16:47:08.707' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1783  ', N'和康生', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:08.710' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1786  ', N'科妍', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:08.710' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1789  ', N'神隆', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:08.710' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1795  ', N'美時', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:08.713' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1802  ', N'台玻', N'4ab3ff2e-284d-457a-a7db-258df9587efc', CAST(N'2024-11-18T16:47:08.713' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1805  ', N'寶徠', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:08.717' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1806  ', N'冠軍', N'4ab3ff2e-284d-457a-a7db-258df9587efc', CAST(N'2024-11-18T16:47:08.720' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1808  ', N'潤隆', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:08.720' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1809  ', N'中釉', N'4ab3ff2e-284d-457a-a7db-258df9587efc', CAST(N'2024-11-18T16:47:08.720' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1810  ', N'和成', N'4ab3ff2e-284d-457a-a7db-258df9587efc', CAST(N'2024-11-18T16:47:08.723' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1817  ', N'凱撒衛', N'4ab3ff2e-284d-457a-a7db-258df9587efc', CAST(N'2024-11-18T16:47:08.727' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1903  ', N'士紙', N'2ea5d8e0-4aff-4fd8-a41e-48e2c1e6ac7e', CAST(N'2024-11-18T16:47:08.727' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1904  ', N'正隆', N'2ea5d8e0-4aff-4fd8-a41e-48e2c1e6ac7e', CAST(N'2024-11-18T16:47:08.730' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1905  ', N'華紙', N'2ea5d8e0-4aff-4fd8-a41e-48e2c1e6ac7e', CAST(N'2024-11-18T16:47:08.730' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1906  ', N'寶隆', N'2ea5d8e0-4aff-4fd8-a41e-48e2c1e6ac7e', CAST(N'2024-11-18T16:47:08.730' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1907  ', N'永豐餘', N'2ea5d8e0-4aff-4fd8-a41e-48e2c1e6ac7e', CAST(N'2024-11-18T16:47:08.733' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'1909  ', N'榮成', N'2ea5d8e0-4aff-4fd8-a41e-48e2c1e6ac7e', CAST(N'2024-11-18T16:47:08.737' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2002  ', N'中鋼', N'2a39a8ed-f4bc-4b25-96e9-a7a7b8c5cfcd', CAST(N'2024-11-18T16:47:08.737' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2006  ', N'東和鋼鐵', N'2a39a8ed-f4bc-4b25-96e9-a7a7b8c5cfcd', CAST(N'2024-11-18T16:47:08.740' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2007  ', N'燁興', N'2a39a8ed-f4bc-4b25-96e9-a7a7b8c5cfcd', CAST(N'2024-11-18T16:47:08.740' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2008  ', N'高興昌', N'2a39a8ed-f4bc-4b25-96e9-a7a7b8c5cfcd', CAST(N'2024-11-18T16:47:08.743' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2009  ', N'第一銅', N'2a39a8ed-f4bc-4b25-96e9-a7a7b8c5cfcd', CAST(N'2024-11-18T16:47:08.743' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2010  ', N'春源', N'2a39a8ed-f4bc-4b25-96e9-a7a7b8c5cfcd', CAST(N'2024-11-18T16:47:08.747' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2012  ', N'春雨', N'2a39a8ed-f4bc-4b25-96e9-a7a7b8c5cfcd', CAST(N'2024-11-18T16:47:08.750' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2013  ', N'中鋼構', N'2a39a8ed-f4bc-4b25-96e9-a7a7b8c5cfcd', CAST(N'2024-11-18T16:47:08.750' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2014  ', N'中鴻', N'2a39a8ed-f4bc-4b25-96e9-a7a7b8c5cfcd', CAST(N'2024-11-18T16:47:08.750' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2015  ', N'豐興', N'2a39a8ed-f4bc-4b25-96e9-a7a7b8c5cfcd', CAST(N'2024-11-18T16:47:08.753' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2017  ', N'官田鋼', N'2a39a8ed-f4bc-4b25-96e9-a7a7b8c5cfcd', CAST(N'2024-11-18T16:47:08.753' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2020  ', N'美亞', N'2a39a8ed-f4bc-4b25-96e9-a7a7b8c5cfcd', CAST(N'2024-11-18T16:47:08.757' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2022  ', N'聚亨', N'2a39a8ed-f4bc-4b25-96e9-a7a7b8c5cfcd', CAST(N'2024-11-18T16:47:08.760' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2023  ', N'燁輝', N'2a39a8ed-f4bc-4b25-96e9-a7a7b8c5cfcd', CAST(N'2024-11-18T16:47:08.760' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2024  ', N'志聯', N'2a39a8ed-f4bc-4b25-96e9-a7a7b8c5cfcd', CAST(N'2024-11-18T16:47:08.760' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2025  ', N'千興', N'2a39a8ed-f4bc-4b25-96e9-a7a7b8c5cfcd', CAST(N'2024-11-18T16:47:08.763' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2027  ', N'大成鋼', N'2a39a8ed-f4bc-4b25-96e9-a7a7b8c5cfcd', CAST(N'2024-11-18T16:47:08.767' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2028  ', N'威致', N'2a39a8ed-f4bc-4b25-96e9-a7a7b8c5cfcd', CAST(N'2024-11-18T16:47:08.767' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2029  ', N'盛餘', N'2a39a8ed-f4bc-4b25-96e9-a7a7b8c5cfcd', CAST(N'2024-11-18T16:47:08.770' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2030  ', N'彰源', N'2a39a8ed-f4bc-4b25-96e9-a7a7b8c5cfcd', CAST(N'2024-11-18T16:47:08.770' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2031  ', N'新光鋼', N'2a39a8ed-f4bc-4b25-96e9-a7a7b8c5cfcd', CAST(N'2024-11-18T16:47:08.770' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2032  ', N'新鋼', N'2a39a8ed-f4bc-4b25-96e9-a7a7b8c5cfcd', CAST(N'2024-11-18T16:47:08.773' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2033  ', N'佳大', N'2a39a8ed-f4bc-4b25-96e9-a7a7b8c5cfcd', CAST(N'2024-11-18T16:47:08.777' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2034  ', N'允強', N'2a39a8ed-f4bc-4b25-96e9-a7a7b8c5cfcd', CAST(N'2024-11-18T16:47:08.777' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2038  ', N'海光', N'2a39a8ed-f4bc-4b25-96e9-a7a7b8c5cfcd', CAST(N'2024-11-18T16:47:08.780' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2049  ', N'上銀', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:08.780' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2059  ', N'川湖', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:08.783' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2062  ', N'橋椿', N'f7a2a768-1cb4-4f32-bf1d-378eb53cf546', CAST(N'2024-11-18T16:47:08.783' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2069  ', N'運錩', N'2a39a8ed-f4bc-4b25-96e9-a7a7b8c5cfcd', CAST(N'2024-11-18T16:47:08.787' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2101  ', N'南港', N'9a66eaf7-f0e2-4194-9a8b-6073ce440f13', CAST(N'2024-11-18T16:47:08.787' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2102  ', N'泰豐', N'9a66eaf7-f0e2-4194-9a8b-6073ce440f13', CAST(N'2024-11-18T16:47:08.790' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2103  ', N'台橡', N'9a66eaf7-f0e2-4194-9a8b-6073ce440f13', CAST(N'2024-11-18T16:47:08.790' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2104  ', N'國際中橡', N'9a66eaf7-f0e2-4194-9a8b-6073ce440f13', CAST(N'2024-11-18T16:47:08.793' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2105  ', N'正新', N'9a66eaf7-f0e2-4194-9a8b-6073ce440f13', CAST(N'2024-11-18T16:47:08.797' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2106  ', N'建大', N'9a66eaf7-f0e2-4194-9a8b-6073ce440f13', CAST(N'2024-11-18T16:47:08.797' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2107  ', N'厚生', N'9a66eaf7-f0e2-4194-9a8b-6073ce440f13', CAST(N'2024-11-18T16:47:08.800' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2108  ', N'南帝', N'9a66eaf7-f0e2-4194-9a8b-6073ce440f13', CAST(N'2024-11-18T16:47:08.800' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2109  ', N'華豐', N'9a66eaf7-f0e2-4194-9a8b-6073ce440f13', CAST(N'2024-11-18T16:47:08.807' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2114  ', N'鑫永銓', N'9a66eaf7-f0e2-4194-9a8b-6073ce440f13', CAST(N'2024-11-18T16:47:08.810' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2115  ', N'六暉-KY', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:08.810' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2201  ', N'裕隆', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:08.813' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2204  ', N'中華', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:08.813' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2206  ', N'三陽工業', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:08.817' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2207  ', N'和泰車', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:08.817' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2208  ', N'台船', N'3398f613-e55a-475e-844c-fe98ccb14ccb', CAST(N'2024-11-18T16:47:08.820' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2211  ', N'長榮鋼', N'2a39a8ed-f4bc-4b25-96e9-a7a7b8c5cfcd', CAST(N'2024-11-18T16:47:08.820' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2227  ', N'裕日車', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:08.823' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2228  ', N'劍麟', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:08.823' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2231  ', N'為升', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:08.827' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2233  ', N'宇隆', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:08.827' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2236  ', N'百達-KY', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:08.830' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2239  ', N'英利-KY', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:08.830' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2241  ', N'艾姆勒', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:08.833' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2243  ', N'宏旭-KY', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:08.833' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2247  ', N'汎德永業', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:08.837' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2250  ', N'IKKA-KY', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:08.837' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2254  ', N'巨鎧精密-創', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:08.840' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2258  ', N'鴻華先進-創', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:08.840' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2301  ', N'光寶科', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:08.843' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2302  ', N'麗正', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:08.843' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2303  ', N'聯電', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:08.847' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2305  ', N'全友', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:08.850' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2308  ', N'台達電', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:08.850' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2312  ', N'金寶', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:08.853' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2313  ', N'華通', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:08.853' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2314  ', N'台揚', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:08.857' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2316  ', N'楠梓電', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:08.860' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2317  ', N'鴻海', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:08.860' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2321  ', N'東訊', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:08.860' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2323  ', N'中環', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:08.863' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2324  ', N'仁寶', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:08.867' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2327  ', N'國巨', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:08.867' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2328  ', N'廣宇', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:08.870' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2329  ', N'華泰', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:08.870' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2330  ', N'台積電', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:08.873' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2331  ', N'精英', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:08.873' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2332  ', N'友訊', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:08.877' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2337  ', N'旺宏', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:08.877' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2338  ', N'光罩', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:08.880' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2340  ', N'台亞', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:08.880' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2342  ', N'茂矽', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:08.883' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2344  ', N'華邦電', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:08.883' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2345  ', N'智邦', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:08.887' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2347  ', N'聯強', N'1fe25901-7929-4955-be9e-37c9d02c80a7', CAST(N'2024-11-18T16:47:08.890' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2348  ', N'海悅', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:08.890' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2349  ', N'錸德', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:08.893' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2351  ', N'順德', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:08.897' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2352  ', N'佳世達', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:08.897' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2353  ', N'宏碁', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:08.900' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2354  ', N'鴻準', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:08.900' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2355  ', N'敬鵬', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:08.903' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2356  ', N'英業達', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:08.903' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2357  ', N'華碩', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:08.907' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2358  ', N'廷鑫', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:08.910' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2359  ', N'所羅門', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:08.910' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2360  ', N'致茂', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:08.913' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2362  ', N'藍天', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:08.913' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2363  ', N'矽統', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:08.917' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2364  ', N'倫飛', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:08.917' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2365  ', N'昆盈', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:08.920' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2367  ', N'燿華', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:08.920' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2368  ', N'金像電', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:08.923' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2369  ', N'菱生', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:08.927' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2371  ', N'大同', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:08.927' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2373  ', N'震旦行', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:08.930' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2374  ', N'佳能', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:08.930' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2375  ', N'凱美', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:08.933' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2376  ', N'技嘉', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:08.933' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2377  ', N'微星', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:08.937' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2379  ', N'瑞昱', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:08.937' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2380  ', N'虹光', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:08.940' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2382  ', N'廣達', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:08.940' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2383  ', N'台光電', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:08.943' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2385  ', N'群光', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:08.943' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2387  ', N'精元', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:08.947' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2388  ', N'威盛', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:08.947' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2390  ', N'云辰', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:08.950' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2392  ', N'正崴', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:08.950' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2393  ', N'億光', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:08.953' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2395  ', N'研華', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:08.953' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2397  ', N'友通', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:08.957' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2399  ', N'映泰', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:08.957' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2401  ', N'凌陽', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:08.960' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2402  ', N'毅嘉', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:08.960' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2404  ', N'漢唐', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:08.963' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2405  ', N'輔信', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:08.963' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2406  ', N'國碩', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:08.967' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2408  ', N'南亞科', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:08.967' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2409  ', N'友達', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:08.970' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2412  ', N'中華電', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:08.970' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2413  ', N'環科', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:08.973' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2414  ', N'精技', N'1fe25901-7929-4955-be9e-37c9d02c80a7', CAST(N'2024-11-18T16:47:08.973' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2415  ', N'錩新', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:08.977' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2417  ', N'圓剛', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:08.977' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2419  ', N'仲琦', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:08.980' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2420  ', N'新巨', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:08.980' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2421  ', N'建準', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:08.983' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2423  ', N'固緯', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:08.983' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2424  ', N'隴華', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:08.987' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2425  ', N'承啟', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:08.987' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2426  ', N'鼎元', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:08.990' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2427  ', N'三商電', N'6b0abdd1-b25e-42af-bdd8-c6066d33424a', CAST(N'2024-11-18T16:47:08.990' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2428  ', N'興勤', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:08.993' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2429  ', N'銘旺科', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:08.993' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2430  ', N'燦坤', N'1fe25901-7929-4955-be9e-37c9d02c80a7', CAST(N'2024-11-18T16:47:08.997' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2431  ', N'聯昌', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:08.997' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2432  ', N'倚天酷碁-創', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.000' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2433  ', N'互盛電', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.000' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2434  ', N'統懋', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.003' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2436  ', N'偉詮電', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.007' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2438  ', N'翔耀', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.007' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2439  ', N'美律', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.010' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2440  ', N'太空梭', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.010' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2441  ', N'超豐', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.013' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2442  ', N'新美齊', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.013' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2443  ', N'昶虹', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.017' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2444  ', N'兆勁', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.017' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2449  ', N'京元電子', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.020' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2450  ', N'神腦', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.020' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2451  ', N'創見', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.023' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2453  ', N'凌群', N'6b0abdd1-b25e-42af-bdd8-c6066d33424a', CAST(N'2024-11-18T16:47:09.023' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2454  ', N'聯發科', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.027' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2455  ', N'全新', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.027' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2457  ', N'飛宏', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.030' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2458  ', N'義隆', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.030' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2459  ', N'敦吉', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.033' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2460  ', N'建通', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.033' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2461  ', N'光群雷', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.037' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2462  ', N'良得電', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.037' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2464  ', N'盟立', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.040' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2465  ', N'麗臺', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.040' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2466  ', N'冠西電', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.040' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2467  ', N'志聖', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.043' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2468  ', N'華經', N'6b0abdd1-b25e-42af-bdd8-c6066d33424a', CAST(N'2024-11-18T16:47:09.047' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2471  ', N'資通', N'6b0abdd1-b25e-42af-bdd8-c6066d33424a', CAST(N'2024-11-18T16:47:09.047' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2472  ', N'立隆電', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.050' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2474  ', N'可成', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.050' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2476  ', N'鉅祥', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.053' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2477  ', N'美隆電', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.053' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2478  ', N'大毅', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.057' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2480  ', N'敦陽科', N'6b0abdd1-b25e-42af-bdd8-c6066d33424a', CAST(N'2024-11-18T16:47:09.057' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2481  ', N'強茂', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.060' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2482  ', N'連宇', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.060' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2483  ', N'百容', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.060' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2484  ', N'希華', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.063' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2485  ', N'兆赫', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.067' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2486  ', N'一詮', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.070' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2488  ', N'漢平', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.070' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2489  ', N'瑞軒', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.073' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2491  ', N'吉祥全', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.080' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2492  ', N'華新科', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.087' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2493  ', N'揚博', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.087' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2495  ', N'普安', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.090' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2496  ', N'卓越', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.090' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2497  ', N'怡利電', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:09.093' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2498  ', N'宏達電', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.097' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2501  ', N'國建', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.097' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2504  ', N'國產', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.100' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2505  ', N'國揚', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.100' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2506  ', N'太設', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.100' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2509  ', N'全坤建', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.103' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2511  ', N'太子', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.107' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2514  ', N'龍邦', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.107' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2515  ', N'中工', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.110' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2516  ', N'新建', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.110' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2520  ', N'冠德', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.110' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2524  ', N'京城', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.113' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2527  ', N'宏璟', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.113' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2528  ', N'皇普', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.117' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2530  ', N'華建', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.120' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2534  ', N'宏盛', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.120' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2535  ', N'達欣工', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.120' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2536  ', N'宏普', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.123' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2537  ', N'聯上發', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.127' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2538  ', N'基泰', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.127' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2539  ', N'櫻花建', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.130' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2540  ', N'愛山林', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.130' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2542  ', N'興富發', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.133' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2543  ', N'皇昌', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.133' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2545  ', N'皇翔', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.137' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2546  ', N'根基', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.137' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2547  ', N'日勝生', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.140' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2548  ', N'華固', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.140' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2597  ', N'潤弘', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.143' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2601  ', N'益航', N'778f44ca-783b-43bd-ae14-5e90c8182ec3', CAST(N'2024-11-18T16:47:09.143' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2603  ', N'長榮', N'3398f613-e55a-475e-844c-fe98ccb14ccb', CAST(N'2024-11-18T16:47:09.147' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2605  ', N'新興', N'3398f613-e55a-475e-844c-fe98ccb14ccb', CAST(N'2024-11-18T16:47:09.147' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2606  ', N'裕民', N'3398f613-e55a-475e-844c-fe98ccb14ccb', CAST(N'2024-11-18T16:47:09.150' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2607  ', N'榮運', N'3398f613-e55a-475e-844c-fe98ccb14ccb', CAST(N'2024-11-18T16:47:09.150' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2608  ', N'嘉里大榮', N'3398f613-e55a-475e-844c-fe98ccb14ccb', CAST(N'2024-11-18T16:47:09.150' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2609  ', N'陽明', N'3398f613-e55a-475e-844c-fe98ccb14ccb', CAST(N'2024-11-18T16:47:09.153' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2610  ', N'華航', N'3398f613-e55a-475e-844c-fe98ccb14ccb', CAST(N'2024-11-18T16:47:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2611  ', N'志信', N'3398f613-e55a-475e-844c-fe98ccb14ccb', CAST(N'2024-11-18T16:47:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2612  ', N'中航', N'3398f613-e55a-475e-844c-fe98ccb14ccb', CAST(N'2024-11-18T16:47:09.160' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2613  ', N'中櫃', N'3398f613-e55a-475e-844c-fe98ccb14ccb', CAST(N'2024-11-18T16:47:09.160' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2614  ', N'東森', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.163' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2615  ', N'萬海', N'3398f613-e55a-475e-844c-fe98ccb14ccb', CAST(N'2024-11-18T16:47:09.163' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2616  ', N'山隆', N'679af646-f510-49a4-bf0c-71c28ac46b57', CAST(N'2024-11-18T16:47:09.167' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2617  ', N'台航', N'3398f613-e55a-475e-844c-fe98ccb14ccb', CAST(N'2024-11-18T16:47:09.167' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2618  ', N'長榮航', N'3398f613-e55a-475e-844c-fe98ccb14ccb', CAST(N'2024-11-18T16:47:09.170' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2630  ', N'亞航', N'3398f613-e55a-475e-844c-fe98ccb14ccb', CAST(N'2024-11-18T16:47:09.170' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2633  ', N'台灣高鐵', N'3398f613-e55a-475e-844c-fe98ccb14ccb', CAST(N'2024-11-18T16:47:09.173' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2634  ', N'漢翔', N'3398f613-e55a-475e-844c-fe98ccb14ccb', CAST(N'2024-11-18T16:47:09.177' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2636  ', N'台驊控股', N'3398f613-e55a-475e-844c-fe98ccb14ccb', CAST(N'2024-11-18T16:47:09.177' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2637  ', N'慧洋-KY', N'3398f613-e55a-475e-844c-fe98ccb14ccb', CAST(N'2024-11-18T16:47:09.180' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2642  ', N'宅配通', N'3398f613-e55a-475e-844c-fe98ccb14ccb', CAST(N'2024-11-18T16:47:09.180' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2645  ', N'長榮航太', N'3398f613-e55a-475e-844c-fe98ccb14ccb', CAST(N'2024-11-18T16:47:09.183' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2646  ', N'星宇航空', N'3398f613-e55a-475e-844c-fe98ccb14ccb', CAST(N'2024-11-18T16:47:09.183' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2701  ', N'萬企', N'52f76d22-40f7-40d4-965c-810e5ef7a084', CAST(N'2024-11-18T16:47:09.190' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2702  ', N'華園', N'52f76d22-40f7-40d4-965c-810e5ef7a084', CAST(N'2024-11-18T16:47:09.190' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2704  ', N'國賓', N'52f76d22-40f7-40d4-965c-810e5ef7a084', CAST(N'2024-11-18T16:47:09.193' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2705  ', N'六福', N'52f76d22-40f7-40d4-965c-810e5ef7a084', CAST(N'2024-11-18T16:47:09.193' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2706  ', N'第一店', N'52f76d22-40f7-40d4-965c-810e5ef7a084', CAST(N'2024-11-18T16:47:09.197' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2707  ', N'晶華', N'52f76d22-40f7-40d4-965c-810e5ef7a084', CAST(N'2024-11-18T16:47:09.200' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2712  ', N'遠雄來', N'52f76d22-40f7-40d4-965c-810e5ef7a084', CAST(N'2024-11-18T16:47:09.200' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2722  ', N'夏都', N'52f76d22-40f7-40d4-965c-810e5ef7a084', CAST(N'2024-11-18T16:47:09.200' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2723  ', N'美食-KY', N'52f76d22-40f7-40d4-965c-810e5ef7a084', CAST(N'2024-11-18T16:47:09.203' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2727  ', N'王品', N'52f76d22-40f7-40d4-965c-810e5ef7a084', CAST(N'2024-11-18T16:47:09.207' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2731  ', N'雄獅', N'52f76d22-40f7-40d4-965c-810e5ef7a084', CAST(N'2024-11-18T16:47:09.207' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2739  ', N'寒舍', N'52f76d22-40f7-40d4-965c-810e5ef7a084', CAST(N'2024-11-18T16:47:09.210' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2748  ', N'雲品', N'52f76d22-40f7-40d4-965c-810e5ef7a084', CAST(N'2024-11-18T16:47:09.210' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2753  ', N'八方雲集', N'52f76d22-40f7-40d4-965c-810e5ef7a084', CAST(N'2024-11-18T16:47:09.213' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2762  ', N'世界健身-KY', N'2f3e70b6-22ca-44e4-b8fa-93b8680c610b', CAST(N'2024-11-18T16:47:09.213' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2801  ', N'彰銀', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.217' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2809  ', N'京城銀', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.217' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2812  ', N'台中銀', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.220' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2816  ', N'旺旺保', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.220' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2820  ', N'華票', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.223' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2832  ', N'台產', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.223' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2834  ', N'臺企銀', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.227' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2836  ', N'高雄銀', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.230' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2838  ', N'聯邦銀', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.230' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2845  ', N'遠東銀', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.233' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2849  ', N'安泰銀', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.240' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2850  ', N'新產', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.240' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2851  ', N'中再保', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.243' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2852  ', N'第一保', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.243' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2855  ', N'統一證', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.247' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2867  ', N'三商壽', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.247' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2880  ', N'華南金', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.250' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2881  ', N'富邦金', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.250' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2882  ', N'國泰金', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.253' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2883  ', N'凱基金', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.253' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2884  ', N'玉山金', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.257' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2885  ', N'元大金', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.260' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2886  ', N'兆豐金', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.260' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2887  ', N'台新金', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.260' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2888  ', N'新光金', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.263' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2889  ', N'國票金', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.263' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2890  ', N'永豐金', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.267' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2891  ', N'中信金', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.270' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2892  ', N'第一金', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.270' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2897  ', N'王道銀行', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.273' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2901  ', N'欣欣', N'778f44ca-783b-43bd-ae14-5e90c8182ec3', CAST(N'2024-11-18T16:47:09.273' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2903  ', N'遠百', N'778f44ca-783b-43bd-ae14-5e90c8182ec3', CAST(N'2024-11-18T16:47:09.277' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2904  ', N'匯僑', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.277' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2905  ', N'三商', N'778f44ca-783b-43bd-ae14-5e90c8182ec3', CAST(N'2024-11-18T16:47:09.280' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2906  ', N'高林', N'778f44ca-783b-43bd-ae14-5e90c8182ec3', CAST(N'2024-11-18T16:47:09.280' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2908  ', N'特力', N'778f44ca-783b-43bd-ae14-5e90c8182ec3', CAST(N'2024-11-18T16:47:09.283' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2910  ', N'統領', N'778f44ca-783b-43bd-ae14-5e90c8182ec3', CAST(N'2024-11-18T16:47:09.290' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2911  ', N'麗嬰房', N'778f44ca-783b-43bd-ae14-5e90c8182ec3', CAST(N'2024-11-18T16:47:09.290' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2912  ', N'統一超', N'778f44ca-783b-43bd-ae14-5e90c8182ec3', CAST(N'2024-11-18T16:47:09.293' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2913  ', N'農林', N'778f44ca-783b-43bd-ae14-5e90c8182ec3', CAST(N'2024-11-18T16:47:09.293' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2915  ', N'潤泰全', N'778f44ca-783b-43bd-ae14-5e90c8182ec3', CAST(N'2024-11-18T16:47:09.297' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2923  ', N'鼎固-KY', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.300' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2929  ', N'淘帝-KY', N'778f44ca-783b-43bd-ae14-5e90c8182ec3', CAST(N'2024-11-18T16:47:09.300' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2939  ', N'永邑-KY', N'778f44ca-783b-43bd-ae14-5e90c8182ec3', CAST(N'2024-11-18T16:47:09.303' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'2945  ', N'三商家購', N'778f44ca-783b-43bd-ae14-5e90c8182ec3', CAST(N'2024-11-18T16:47:09.303' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3002  ', N'歐格', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.307' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3003  ', N'健和興', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.307' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3004  ', N'豐達科', N'2a39a8ed-f4bc-4b25-96e9-a7a7b8c5cfcd', CAST(N'2024-11-18T16:47:09.310' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3005  ', N'神基', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.310' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3006  ', N'晶豪科', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.310' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3008  ', N'大立光', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.317' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3010  ', N'華立', N'1fe25901-7929-4955-be9e-37c9d02c80a7', CAST(N'2024-11-18T16:47:09.317' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3011  ', N'今皓', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.320' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3013  ', N'晟銘電', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.320' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3014  ', N'聯陽', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.323' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3015  ', N'全漢', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.323' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3016  ', N'嘉晶', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.327' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3017  ', N'奇鋐', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.327' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3018  ', N'隆銘綠能', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.327' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3019  ', N'亞光', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.330' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3021  ', N'鴻名', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.333' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3022  ', N'威強電', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.333' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3023  ', N'信邦', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.337' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3024  ', N'憶聲', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.337' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3025  ', N'星通', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.340' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3026  ', N'禾伸堂', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.340' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3027  ', N'盛達', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.340' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3028  ', N'增你強', N'1fe25901-7929-4955-be9e-37c9d02c80a7', CAST(N'2024-11-18T16:47:09.343' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3029  ', N'零壹', N'6b0abdd1-b25e-42af-bdd8-c6066d33424a', CAST(N'2024-11-18T16:47:09.343' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3030  ', N'德律', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.347' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3031  ', N'佰鴻', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.347' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3032  ', N'偉訓', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.347' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3033  ', N'威健', N'1fe25901-7929-4955-be9e-37c9d02c80a7', CAST(N'2024-11-18T16:47:09.350' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3034  ', N'聯詠', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.350' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3035  ', N'智原', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.350' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3036  ', N'文曄', N'1fe25901-7929-4955-be9e-37c9d02c80a7', CAST(N'2024-11-18T16:47:09.353' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3037  ', N'欣興', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.353' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3038  ', N'全台', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.357' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3040  ', N'遠見', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.357' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3041  ', N'揚智', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.357' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3042  ', N'晶技', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.360' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3043  ', N'科風', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.360' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3044  ', N'健鼎', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.360' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3045  ', N'台灣大', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.363' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3046  ', N'建碁', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.363' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3047  ', N'訊舟', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.367' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3048  ', N'益登', N'1fe25901-7929-4955-be9e-37c9d02c80a7', CAST(N'2024-11-18T16:47:09.367' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3049  ', N'精金', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.370' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3050  ', N'鈺德', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.370' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3051  ', N'力特', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.370' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3052  ', N'夆典', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.370' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3054  ', N'立萬利', N'4e9e4100-343c-4bd5-b446-5686dea6060a', CAST(N'2024-11-18T16:47:09.373' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3055  ', N'蔚華科', N'1fe25901-7929-4955-be9e-37c9d02c80a7', CAST(N'2024-11-18T16:47:09.373' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3056  ', N'富華新', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.373' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3057  ', N'喬鼎', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.377' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3058  ', N'立德', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.377' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3059  ', N'華晶科', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.377' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3060  ', N'銘異', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.380' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3062  ', N'建漢', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.380' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3090  ', N'日電貿', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.380' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3092  ', N'鴻碩', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.380' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3094  ', N'聯傑', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.383' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3130  ', N'一零四', N'6bd6700c-9f6f-4c93-89cd-8d77477d2ee3', CAST(N'2024-11-18T16:47:09.383' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3138  ', N'耀登', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.383' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3149  ', N'正達', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.387' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3150  ', N'鈺寶-創', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.387' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3164  ', N'景岳', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.387' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3167  ', N'大量', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:09.390' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3168  ', N'眾福科', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.390' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3189  ', N'景碩', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.390' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3209  ', N'全科', N'1fe25901-7929-4955-be9e-37c9d02c80a7', CAST(N'2024-11-18T16:47:09.393' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3229  ', N'晟鈦', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.393' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3231  ', N'緯創', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.393' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3257  ', N'虹冠電', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.397' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3266  ', N'昇陽', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.397' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3296  ', N'勝德', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.397' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3305  ', N'昇貿', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.400' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3308  ', N'聯德', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.400' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3311  ', N'閎暉', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.400' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3312  ', N'弘憶股', N'1fe25901-7929-4955-be9e-37c9d02c80a7', CAST(N'2024-11-18T16:47:09.400' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3321  ', N'同泰', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.403' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3338  ', N'泰碩', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.403' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3346  ', N'麗清', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:09.403' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3356  ', N'奇偶', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.407' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3376  ', N'新日興', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.407' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3380  ', N'明泰', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.407' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3406  ', N'玉晶光', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.410' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3413  ', N'京鼎', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.410' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3416  ', N'融程電', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.410' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3419  ', N'譁裕', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.413' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3432  ', N'台端', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.413' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3437  ', N'榮創', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.413' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3443  ', N'創意', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.417' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3447  ', N'展達', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.417' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3450  ', N'聯鈞', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.417' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3454  ', N'晶睿', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.420' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3481  ', N'群創', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.420' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3494  ', N'誠研', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.423' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3501  ', N'維熹', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.423' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3504  ', N'揚明光', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.423' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3515  ', N'華擎', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.427' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3518  ', N'柏騰', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.427' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3528  ', N'安馳', N'1fe25901-7929-4955-be9e-37c9d02c80a7', CAST(N'2024-11-18T16:47:09.427' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3530  ', N'晶相光', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.430' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3532  ', N'台勝科', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.430' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3533  ', N'嘉澤', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.430' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3535  ', N'晶彩科', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.430' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3543  ', N'州巧', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.433' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3545  ', N'敦泰', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.433' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3550  ', N'聯穎', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.433' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3557  ', N'嘉威', N'f7a2a768-1cb4-4f32-bf1d-378eb53cf546', CAST(N'2024-11-18T16:47:09.437' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3563  ', N'牧德', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.437' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3576  ', N'聯合再生', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.437' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3583  ', N'辛耘', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.440' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3588  ', N'通嘉', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.440' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3591  ', N'艾笛森', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.440' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3592  ', N'瑞鼎', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.440' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3593  ', N'力銘', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.443' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3596  ', N'智易', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.443' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3605  ', N'宏致', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.447' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3607  ', N'谷崧', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.447' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3617  ', N'碩天', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.447' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3622  ', N'洋華', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.450' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3645  ', N'達邁', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.450' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3652  ', N'精聯', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.450' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3653  ', N'健策', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.450' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3661  ', N'世芯-KY', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.453' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3665  ', N'貿聯-KY', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.453' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3669  ', N'圓展', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.453' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3673  ', N'TPK-KY', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.457' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3679  ', N'新至陞', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.457' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3686  ', N'達能', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.457' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3694  ', N'海華', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.460' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3701  ', N'大眾控', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.460' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3702  ', N'大聯大', N'1fe25901-7929-4955-be9e-37c9d02c80a7', CAST(N'2024-11-18T16:47:09.460' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3703  ', N'欣陸', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.460' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3704  ', N'合勤控', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.463' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3705  ', N'永信', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.463' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3706  ', N'神達', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.463' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3708  ', N'上緯投控', N'552bfa4b-1efc-4cac-b36a-198cba895427', CAST(N'2024-11-18T16:47:09.467' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3711  ', N'日月光投控', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.467' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3712  ', N'永崴投控', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.470' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3714  ', N'富采', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.470' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3715  ', N'定穎投控', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.470' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'3716  ', N'中化控股', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.470' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4104  ', N'佳醫', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.473' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4106  ', N'雃博', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.473' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4108  ', N'懷特', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.477' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4119  ', N'旭富', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.477' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4133  ', N'亞諾法', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.477' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4137  ', N'麗豐-KY', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.480' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4142  ', N'國光生', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.480' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4148  ', N'全宇生技-KY', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.480' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4155  ', N'訊映', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.483' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4164  ', N'承業醫', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.483' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4190  ', N'佐登-KY', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.483' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4306  ', N'炎洲', N'4faba753-52a8-4be8-bf39-cd19968a3a24', CAST(N'2024-11-18T16:47:09.487' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4414  ', N'如興', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:09.487' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4426  ', N'利勤', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:09.487' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4438  ', N'廣越', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:09.490' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4439  ', N'冠星-KY', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:09.490' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4440  ', N'宜新實業', N'ca814c83-69e9-4e64-953d-e10445a1f001', CAST(N'2024-11-18T16:47:09.490' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4526  ', N'東台', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:09.490' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4532  ', N'瑞智', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:09.493' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4536  ', N'拓凱', N'2f3e70b6-22ca-44e4-b8fa-93b8680c610b', CAST(N'2024-11-18T16:47:09.493' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4540  ', N'全球傳動', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:09.493' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4545  ', N'銘鈺', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.497' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4551  ', N'智伸科', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:09.497' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4552  ', N'力達-KY', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:09.497' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4555  ', N'氣立', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:09.500' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4557  ', N'永新-KY', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:09.500' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4560  ', N'強信-KY', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:09.500' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4562  ', N'穎漢', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:09.500' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4564  ', N'元翎', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:09.503' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4566  ', N'時碩工業', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:09.503' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4569  ', N'六方科-KY', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:09.507' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4571  ', N'鈞興-KY', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:09.507' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4572  ', N'駐龍', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:09.507' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4576  ', N'大銀微系統', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:09.510' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4581  ', N'光隆精密-KY', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:09.510' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4583  ', N'台灣精銳', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:09.510' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4588  ', N'玖鼎電力', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.513' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4720  ', N'德淵', N'fac6ee42-a31a-48e7-bd7b-7ae6165d3b1c', CAST(N'2024-11-18T16:47:09.513' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4722  ', N'國精化', N'fac6ee42-a31a-48e7-bd7b-7ae6165d3b1c', CAST(N'2024-11-18T16:47:09.513' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4736  ', N'泰博', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.517' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4737  ', N'華廣', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.517' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4739  ', N'康普', N'fac6ee42-a31a-48e7-bd7b-7ae6165d3b1c', CAST(N'2024-11-18T16:47:09.517' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4746  ', N'台耀', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.520' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4755  ', N'三福化', N'fac6ee42-a31a-48e7-bd7b-7ae6165d3b1c', CAST(N'2024-11-18T16:47:09.520' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4763  ', N'材料-KY', N'fac6ee42-a31a-48e7-bd7b-7ae6165d3b1c', CAST(N'2024-11-18T16:47:09.520' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4764  ', N'雙鍵', N'fac6ee42-a31a-48e7-bd7b-7ae6165d3b1c', CAST(N'2024-11-18T16:47:09.520' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4766  ', N'南寶', N'fac6ee42-a31a-48e7-bd7b-7ae6165d3b1c', CAST(N'2024-11-18T16:47:09.523' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4770  ', N'上品', N'fac6ee42-a31a-48e7-bd7b-7ae6165d3b1c', CAST(N'2024-11-18T16:47:09.523' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4771  ', N'望隼', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.527' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4807  ', N'日成-KY', N'778f44ca-783b-43bd-ae14-5e90c8182ec3', CAST(N'2024-11-18T16:47:09.527' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4904  ', N'遠傳', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.530' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4906  ', N'正文', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.530' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4912  ', N'聯德控股-KY', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.530' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4915  ', N'致伸', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.533' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4916  ', N'事欣科', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.533' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4919  ', N'新唐', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.533' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4927  ', N'泰鼎-KY', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.537' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4930  ', N'燦星網', N'c5ec134b-d18e-448b-9600-54790ebacc56', CAST(N'2024-11-18T16:47:09.537' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4934  ', N'太極', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.537' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4935  ', N'茂林-KY', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.540' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4938  ', N'和碩', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.540' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4942  ', N'嘉彰', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.540' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4943  ', N'康控-KY', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.540' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4949  ', N'有成精密', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.543' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4952  ', N'凌通', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.543' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4956  ', N'光鋐', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.543' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4958  ', N'臻鼎-KY', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.547' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4960  ', N'誠美材', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.547' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4961  ', N'天鈺', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.547' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4967  ', N'十銓', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.550' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4968  ', N'立積', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.550' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4976  ', N'佳凌', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.550' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4977  ', N'眾達-KY', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.550' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4989  ', N'榮科', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.553' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4994  ', N'傳奇', N'6b0abdd1-b25e-42af-bdd8-c6066d33424a', CAST(N'2024-11-18T16:47:09.553' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'4999  ', N'鑫禾', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.553' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5007  ', N'三星', N'2a39a8ed-f4bc-4b25-96e9-a7a7b8c5cfcd', CAST(N'2024-11-18T16:47:09.557' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5203  ', N'訊連', N'6b0abdd1-b25e-42af-bdd8-c6066d33424a', CAST(N'2024-11-18T16:47:09.557' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5215  ', N'科嘉-KY', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.560' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5222  ', N'全訊', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.560' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5225  ', N'東科-KY', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.560' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5234  ', N'達興材料', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.560' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5243  ', N'乙盛-KY', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.563' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5244  ', N'弘凱', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.563' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5258  ', N'虹堡', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.563' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5269  ', N'祥碩', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.567' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5283  ', N'禾聯碩', N'c5ec134b-d18e-448b-9600-54790ebacc56', CAST(N'2024-11-18T16:47:09.567' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5284  ', N'jpp-KY', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.567' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5285  ', N'界霖', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.570' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5288  ', N'豐祥-KY', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:09.570' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5292  ', N'華懋', N'552bfa4b-1efc-4cac-b36a-198cba895427', CAST(N'2024-11-18T16:47:09.570' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5306  ', N'桂盟', N'2f3e70b6-22ca-44e4-b8fa-93b8680c610b', CAST(N'2024-11-18T16:47:09.570' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5388  ', N'中磊', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.573' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5434  ', N'崇越', N'1fe25901-7929-4955-be9e-37c9d02c80a7', CAST(N'2024-11-18T16:47:09.573' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5469  ', N'瀚宇博', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.573' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5471  ', N'松翰', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.577' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5484  ', N'慧友', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.577' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5515  ', N'建國', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.580' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5519  ', N'隆大', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.580' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5521  ', N'工信', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.580' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5522  ', N'遠雄', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.583' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5525  ', N'順天', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.583' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5531  ', N'鄉林', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.587' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5533  ', N'皇鼎', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.587' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5534  ', N'長虹', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.587' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5538  ', N'東明-KY', N'2a39a8ed-f4bc-4b25-96e9-a7a7b8c5cfcd', CAST(N'2024-11-18T16:47:09.590' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5546  ', N'永固-KY', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.590' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5607  ', N'遠雄港', N'3398f613-e55a-475e-844c-fe98ccb14ccb', CAST(N'2024-11-18T16:47:09.590' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5608  ', N'四維航', N'3398f613-e55a-475e-844c-fe98ccb14ccb', CAST(N'2024-11-18T16:47:09.590' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5706  ', N'鳳凰', N'52f76d22-40f7-40d4-965c-810e5ef7a084', CAST(N'2024-11-18T16:47:09.593' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5871  ', N'中租-KY', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.593' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5876  ', N'上海商銀', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.593' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5880  ', N'合庫金', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.597' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5906  ', N'台南-KY', N'778f44ca-783b-43bd-ae14-5e90c8182ec3', CAST(N'2024-11-18T16:47:09.597' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'5907  ', N'大洋-KY', N'778f44ca-783b-43bd-ae14-5e90c8182ec3', CAST(N'2024-11-18T16:47:09.597' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6005  ', N'群益證', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.600' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6024  ', N'群益期', N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', CAST(N'2024-11-18T16:47:09.600' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6108  ', N'競國', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.600' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6112  ', N'邁達特', N'6b0abdd1-b25e-42af-bdd8-c6066d33424a', CAST(N'2024-11-18T16:47:09.600' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6115  ', N'鎰勝', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.603' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6116  ', N'彩晶', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.603' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6117  ', N'迎廣', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.607' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6120  ', N'達運', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.607' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6128  ', N'上福', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.607' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6133  ', N'金橋', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.610' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6136  ', N'富爾特', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.610' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6139  ', N'亞翔', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.610' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6141  ', N'柏承', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.610' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6142  ', N'友勁', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.613' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6152  ', N'百一', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.613' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6153  ', N'嘉聯益', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.617' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6155  ', N'鈞寶', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.617' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6164  ', N'華興', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.617' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6165  ', N'浪凡', N'6bd6700c-9f6f-4c93-89cd-8d77477d2ee3', CAST(N'2024-11-18T16:47:09.620' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6166  ', N'凌華', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.620' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6168  ', N'宏齊', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.620' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6176  ', N'瑞儀', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.623' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6177  ', N'達麗', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.623' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6183  ', N'關貿', N'6b0abdd1-b25e-42af-bdd8-c6066d33424a', CAST(N'2024-11-18T16:47:09.623' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6184  ', N'大豐電', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.627' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6189  ', N'豐藝', N'1fe25901-7929-4955-be9e-37c9d02c80a7', CAST(N'2024-11-18T16:47:09.627' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6191  ', N'精成科', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.627' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6192  ', N'巨路', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.630' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6196  ', N'帆宣', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.630' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6197  ', N'佳必琪', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.630' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6201  ', N'亞弘電', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.630' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6202  ', N'盛群', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.633' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6205  ', N'詮欣', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.633' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6206  ', N'飛捷', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.633' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6209  ', N'今國光', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.637' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6213  ', N'聯茂', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.640' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6214  ', N'精誠', N'6b0abdd1-b25e-42af-bdd8-c6066d33424a', CAST(N'2024-11-18T16:47:09.640' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6215  ', N'和椿', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.640' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6216  ', N'居易', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.640' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6224  ', N'聚鼎', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.643' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6225  ', N'天瀚', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.643' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6226  ', N'光鼎', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.643' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6230  ', N'尼得科超眾', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.647' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6235  ', N'華孚', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.647' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6239  ', N'力成', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.647' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6243  ', N'迅杰', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.650' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6257  ', N'矽格', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.650' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6269  ', N'台郡', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.650' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6271  ', N'同欣電', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.650' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6277  ', N'宏正', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.653' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6278  ', N'台表科', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.653' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6281  ', N'全國電', N'1fe25901-7929-4955-be9e-37c9d02c80a7', CAST(N'2024-11-18T16:47:09.657' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6282  ', N'康舒', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.660' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6283  ', N'淳安', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.660' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6285  ', N'啟碁', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.660' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6288  ', N'聯嘉', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:09.660' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6405  ', N'悅城', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.663' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6409  ', N'旭隼', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.663' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6412  ', N'群電', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.663' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6414  ', N'樺漢', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.667' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6415  ', N'矽力*-KY', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.667' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6416  ', N'瑞祺電通', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.667' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6423  ', N'億而得-創', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.670' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6426  ', N'統新', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.670' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6431  ', N'光麗-KY', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.670' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6438  ', N'迅得', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.673' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6442  ', N'光聖', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.673' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6443  ', N'元晶', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.673' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6446  ', N'藥華藥', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.677' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6449  ', N'鈺邦', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.677' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6451  ', N'訊芯-KY', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.677' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6456  ', N'GIS-KY', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.680' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6464  ', N'台數科', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.680' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6472  ', N'保瑞', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.680' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6477  ', N'安集', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.680' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6491  ', N'晶碩', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.683' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6504  ', N'南六', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.683' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6505  ', N'台塑化', N'679af646-f510-49a4-bf0c-71c28ac46b57', CAST(N'2024-11-18T16:47:09.683' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6515  ', N'穎崴', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.687' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6525  ', N'捷敏-KY', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.687' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6526  ', N'達發', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.687' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6531  ', N'愛普*', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.690' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6533  ', N'晶心科', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.690' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6534  ', N'正瀚-創', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.690' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6541  ', N'泰福-KY', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.693' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6550  ', N'北極星藥業-KY', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.693' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6552  ', N'易華電', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.697' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6558  ', N'興能高', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.697' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6573  ', N'虹揚-KY', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.697' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6579  ', N'研揚', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.700' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6581  ', N'鋼聯', N'552bfa4b-1efc-4cac-b36a-198cba895427', CAST(N'2024-11-18T16:47:09.700' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6582  ', N'申豐', N'9a66eaf7-f0e2-4194-9a8b-6073ce440f13', CAST(N'2024-11-18T16:47:09.700' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6585  ', N'鼎基', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.700' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6591  ', N'動力-KY', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.703' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6592  ', N'和潤企業', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.703' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6598  ', N'ABC-KY', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.707' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6605  ', N'帝寶', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:09.707' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6606  ', N'建德工業', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:09.707' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6625  ', N'必應', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.710' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6641  ', N'基士德-KY', N'552bfa4b-1efc-4cac-b36a-198cba895427', CAST(N'2024-11-18T16:47:09.710' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6645  ', N'金萬林-創', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.710' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6655  ', N'科定', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.710' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6657  ', N'華安', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.713' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6658  ', N'聯策', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.713' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6666  ', N'羅麗芬-KY', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.713' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6668  ', N'中揚光', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.717' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6669  ', N'緯穎', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.717' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6670  ', N'復盛應用', N'2f3e70b6-22ca-44e4-b8fa-93b8680c610b', CAST(N'2024-11-18T16:47:09.720' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6671  ', N'三能-KY', N'f7a2a768-1cb4-4f32-bf1d-378eb53cf546', CAST(N'2024-11-18T16:47:09.720' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6672  ', N'騰輝電子-KY', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.720' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6674  ', N'鋐寶科技', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.720' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6689  ', N'伊雲谷', N'6bd6700c-9f6f-4c93-89cd-8d77477d2ee3', CAST(N'2024-11-18T16:47:09.723' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6691  ', N'洋基工程', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.723' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6695  ', N'芯鼎', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.723' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6698  ', N'旭暉應材', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.727' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6706  ', N'惠特', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.727' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6715  ', N'嘉基', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.727' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6719  ', N'力智', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.730' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6742  ', N'澤米', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.730' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6743  ', N'安普新', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.730' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6753  ', N'龍德造船', N'3398f613-e55a-475e-844c-fe98ccb14ccb', CAST(N'2024-11-18T16:47:09.730' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6754  ', N'匯僑設計', N'f7a2a768-1cb4-4f32-bf1d-378eb53cf546', CAST(N'2024-11-18T16:47:09.733' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6756  ', N'威鋒電子', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.733' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6757  ', N'台灣虎航-創', N'3398f613-e55a-475e-844c-fe98ccb14ccb', CAST(N'2024-11-18T16:47:09.733' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6768  ', N'志強-KY', N'2f3e70b6-22ca-44e4-b8fa-93b8680c610b', CAST(N'2024-11-18T16:47:09.737' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6770  ', N'力積電', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.737' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6771  ', N'平和環保-創', N'552bfa4b-1efc-4cac-b36a-198cba895427', CAST(N'2024-11-18T16:47:09.737' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6776  ', N'展碁國際', N'1fe25901-7929-4955-be9e-37c9d02c80a7', CAST(N'2024-11-18T16:47:09.740' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6781  ', N'AES-KY', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.740' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6782  ', N'視陽', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.740' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6789  ', N'采鈺', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.740' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6790  ', N'永豐實', N'2ea5d8e0-4aff-4fd8-a41e-48e2c1e6ac7e', CAST(N'2024-11-18T16:47:09.743' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6792  ', N'詠業', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.743' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6794  ', N'向榮生技-創', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.747' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6796  ', N'晉弘', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.747' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6799  ', N'來頡', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.750' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6805  ', N'富世達', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.750' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6806  ', N'森崴能源', N'552bfa4b-1efc-4cac-b36a-198cba895427', CAST(N'2024-11-18T16:47:09.750' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6807  ', N'峰源-KY', N'f7a2a768-1cb4-4f32-bf1d-378eb53cf546', CAST(N'2024-11-18T16:47:09.753' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6830  ', N'汎銓', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.753' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6834  ', N'天二科技', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.753' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6835  ', N'圓裕', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.757' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6838  ', N'台新藥', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.757' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6854  ', N'錼創科技-KY創', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.757' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6861  ', N'睿生光電', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.760' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6862  ', N'三集瑞-KY', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.760' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6863  ', N'永道-KY', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.760' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6869  ', N'雲豹能源', N'552bfa4b-1efc-4cac-b36a-198cba895427', CAST(N'2024-11-18T16:47:09.763' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6873  ', N'泓德能源', N'552bfa4b-1efc-4cac-b36a-198cba895427', CAST(N'2024-11-18T16:47:09.763' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6890  ', N'來億-KY', N'2f3e70b6-22ca-44e4-b8fa-93b8680c610b', CAST(N'2024-11-18T16:47:09.763' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6901  ', N'鑽石投資', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.767' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6902  ', N'GOGOLOOK-創', N'6bd6700c-9f6f-4c93-89cd-8d77477d2ee3', CAST(N'2024-11-18T16:47:09.767' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6906  ', N'現觀科', N'6bd6700c-9f6f-4c93-89cd-8d77477d2ee3', CAST(N'2024-11-18T16:47:09.767' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6914  ', N'阜爾運通', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.770' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6916  ', N'華凌', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.770' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6919  ', N'康霈*', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.770' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6923  ', N'中台', N'552bfa4b-1efc-4cac-b36a-198cba895427', CAST(N'2024-11-18T16:47:09.770' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6928  ', N'攸泰科技', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.773' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6933  ', N'AMAX-KY', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.773' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6937  ', N'天虹', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.777' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6949  ', N'沛爾生醫-創', N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', CAST(N'2024-11-18T16:47:09.777' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6951  ', N'青新-創', N'552bfa4b-1efc-4cac-b36a-198cba895427', CAST(N'2024-11-18T16:47:09.777' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6952  ', N'大武山', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.780' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6957  ', N'裕慶-KY', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.780' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6958  ', N'日盛台駿', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.780' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6969  ', N'成信實業*-創', N'552bfa4b-1efc-4cac-b36a-198cba895427', CAST(N'2024-11-18T16:47:09.780' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'6988  ', N'威力暘-創', N'43381d11-2576-48be-a4f6-2d81220b130d', CAST(N'2024-11-18T16:47:09.783' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8011  ', N'台通', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.783' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8016  ', N'矽創', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.783' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8021  ', N'尖點', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.787' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8028  ', N'昇陽半導體', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.787' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8033  ', N'雷虎', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.787' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8039  ', N'台虹', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.790' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8046  ', N'南電', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.790' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8070  ', N'長華*', N'1fe25901-7929-4955-be9e-37c9d02c80a7', CAST(N'2024-11-18T16:47:09.790' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8072  ', N'陞泰', N'1fe25901-7929-4955-be9e-37c9d02c80a7', CAST(N'2024-11-18T16:47:09.793' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8081  ', N'致新', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.793' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8101  ', N'華冠', N'e5077a05-87ea-4d3d-b673-19680d092a59', CAST(N'2024-11-18T16:47:09.793' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8103  ', N'瀚荃', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.797' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8104  ', N'錸寶', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.797' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8105  ', N'凌巨', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.797' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8110  ', N'華東', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.800' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8112  ', N'至上', N'1fe25901-7929-4955-be9e-37c9d02c80a7', CAST(N'2024-11-18T16:47:09.800' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8114  ', N'振樺電', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.800' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8131  ', N'福懋科', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.803' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8150  ', N'南茂', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.803' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8162  ', N'微矽電子-創', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.807' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8163  ', N'達方', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.810' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8201  ', N'無敵', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.810' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8210  ', N'勤誠', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.810' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8213  ', N'志超', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.810' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8215  ', N'明基材', N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', CAST(N'2024-11-18T16:47:09.813' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8222  ', N'寶一', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:09.813' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8249  ', N'菱光', N'c9eda589-027b-424b-9d22-a5b934e563ee', CAST(N'2024-11-18T16:47:09.813' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8261  ', N'富鼎', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.817' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8271  ', N'宇瞻', N'add8fc32-39c2-4b57-9f00-f470d4b358e1', CAST(N'2024-11-18T16:47:09.817' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8341  ', N'日友', N'552bfa4b-1efc-4cac-b36a-198cba895427', CAST(N'2024-11-18T16:47:09.820' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8367  ', N'建新國際', N'3398f613-e55a-475e-844c-fe98ccb14ccb', CAST(N'2024-11-18T16:47:09.820' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8374  ', N'羅昇', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:09.820' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8404  ', N'百和興業-KY', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.820' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8411  ', N'福貞-KY', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.823' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8422  ', N'可寧衛', N'552bfa4b-1efc-4cac-b36a-198cba895427', CAST(N'2024-11-18T16:47:09.823' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8429  ', N'金麗-KY', N'778f44ca-783b-43bd-ae14-5e90c8182ec3', CAST(N'2024-11-18T16:47:09.823' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8438  ', N'昶昕', N'552bfa4b-1efc-4cac-b36a-198cba895427', CAST(N'2024-11-18T16:47:09.827' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8442  ', N'威宏-KY', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.827' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8443  ', N'阿瘦', N'778f44ca-783b-43bd-ae14-5e90c8182ec3', CAST(N'2024-11-18T16:47:09.827' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8454  ', N'富邦媒', N'6bd6700c-9f6f-4c93-89cd-8d77477d2ee3', CAST(N'2024-11-18T16:47:09.830' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8462  ', N'柏文', N'2f3e70b6-22ca-44e4-b8fa-93b8680c610b', CAST(N'2024-11-18T16:47:09.830' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8463  ', N'潤泰材', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.830' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8464  ', N'億豐', N'f7a2a768-1cb4-4f32-bf1d-378eb53cf546', CAST(N'2024-11-18T16:47:09.830' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8466  ', N'美吉吉-KY', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.833' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8467  ', N'波力-KY', N'2f3e70b6-22ca-44e4-b8fa-93b8680c610b', CAST(N'2024-11-18T16:47:09.833' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8473  ', N'山林水', N'552bfa4b-1efc-4cac-b36a-198cba895427', CAST(N'2024-11-18T16:47:09.833' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8476  ', N'台境*', N'552bfa4b-1efc-4cac-b36a-198cba895427', CAST(N'2024-11-18T16:47:09.837' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8478  ', N'東哥遊艇', N'2f3e70b6-22ca-44e4-b8fa-93b8680c610b', CAST(N'2024-11-18T16:47:09.837' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8481  ', N'政伸', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.837' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8482  ', N'商億-KY', N'f7a2a768-1cb4-4f32-bf1d-378eb53cf546', CAST(N'2024-11-18T16:47:09.840' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8487  ', N'愛爾達-創', N'6bd6700c-9f6f-4c93-89cd-8d77477d2ee3', CAST(N'2024-11-18T16:47:09.840' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8488  ', N'吉源-KY', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.840' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8499  ', N'鼎炫-KY', N'92667b99-caea-4764-b565-33cdad31c399', CAST(N'2024-11-18T16:47:09.843' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8926  ', N'台汽電', N'679af646-f510-49a4-bf0c-71c28ac46b57', CAST(N'2024-11-18T16:47:09.843' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8940  ', N'新天地', N'52f76d22-40f7-40d4-965c-810e5ef7a084', CAST(N'2024-11-18T16:47:09.843' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'8996  ', N'高力', N'65351a1e-f30a-4d09-bc22-fe875563421a', CAST(N'2024-11-18T16:47:09.847' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9105  ', N'泰金寶-DR', N'6963f64c-fe4f-4c9d-8cd4-53e971ac5268', CAST(N'2024-11-18T16:47:09.847' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'912000', N'晨訊科-DR', N'6963f64c-fe4f-4c9d-8cd4-53e971ac5268', CAST(N'2024-11-18T16:47:09.847' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9802  ', N'鈺齊-KY', N'2f3e70b6-22ca-44e4-b8fa-93b8680c610b', CAST(N'2024-11-18T16:47:09.850' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9902  ', N'台火', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.850' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9904  ', N'寶成', N'2f3e70b6-22ca-44e4-b8fa-93b8680c610b', CAST(N'2024-11-18T16:47:09.850' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9905  ', N'大華', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.850' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9906  ', N'欣巴巴', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.853' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9907  ', N'統一實', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.853' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9908  ', N'大台北', N'679af646-f510-49a4-bf0c-71c28ac46b57', CAST(N'2024-11-18T16:47:09.857' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9910  ', N'豐泰', N'2f3e70b6-22ca-44e4-b8fa-93b8680c610b', CAST(N'2024-11-18T16:47:09.857' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9911  ', N'櫻花', N'f7a2a768-1cb4-4f32-bf1d-378eb53cf546', CAST(N'2024-11-18T16:47:09.857' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9912  ', N'偉聯', N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', CAST(N'2024-11-18T16:47:09.860' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9914  ', N'美利達', N'2f3e70b6-22ca-44e4-b8fa-93b8680c610b', CAST(N'2024-11-18T16:47:09.860' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9917  ', N'中保科', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.863' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9918  ', N'欣天然', N'679af646-f510-49a4-bf0c-71c28ac46b57', CAST(N'2024-11-18T16:47:09.863' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9919  ', N'康那香', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.867' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9921  ', N'巨大', N'2f3e70b6-22ca-44e4-b8fa-93b8680c610b', CAST(N'2024-11-18T16:47:09.867' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9924  ', N'福興', N'f7a2a768-1cb4-4f32-bf1d-378eb53cf546', CAST(N'2024-11-18T16:47:09.870' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9925  ', N'新保', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.870' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9926  ', N'新海', N'679af646-f510-49a4-bf0c-71c28ac46b57', CAST(N'2024-11-18T16:47:09.870' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9927  ', N'泰銘', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.873' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9928  ', N'中視', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.873' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9929  ', N'秋雨', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.877' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9930  ', N'中聯資源', N'552bfa4b-1efc-4cac-b36a-198cba895427', CAST(N'2024-11-18T16:47:09.877' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9931  ', N'欣高', N'679af646-f510-49a4-bf0c-71c28ac46b57', CAST(N'2024-11-18T16:47:09.880' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9933  ', N'中鼎', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.880' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9934  ', N'成霖', N'f7a2a768-1cb4-4f32-bf1d-378eb53cf546', CAST(N'2024-11-18T16:47:09.880' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9935  ', N'慶豐富', N'f7a2a768-1cb4-4f32-bf1d-378eb53cf546', CAST(N'2024-11-18T16:47:09.883' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9937  ', N'全國', N'679af646-f510-49a4-bf0c-71c28ac46b57', CAST(N'2024-11-18T16:47:09.883' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9938  ', N'百和', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.887' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9939  ', N'宏全', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.887' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9940  ', N'信義', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.890' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9941  ', N'裕融', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.890' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9942  ', N'茂順', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.890' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9943  ', N'好樂迪', N'52f76d22-40f7-40d4-965c-810e5ef7a084', CAST(N'2024-11-18T16:47:09.893' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9944  ', N'新麗', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.893' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9945  ', N'潤泰新', N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', CAST(N'2024-11-18T16:47:09.893' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9946  ', N'三發地產', N'c4fe9ceb-f92b-4f2d-8d47-928843437937', CAST(N'2024-11-18T16:47:09.897' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9955  ', N'佳龍', N'552bfa4b-1efc-4cac-b36a-198cba895427', CAST(N'2024-11-18T16:47:09.897' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'9958  ', N'世紀鋼', N'2a39a8ed-f4bc-4b25-96e9-a7a7b8c5cfcd', CAST(N'2024-11-18T16:47:09.900' AS DateTime), NULL)
GO
INSERT [dbo].[Company] ([CompanyCode], [CompanyName], [IndustryId], [CreateTime], [ModifyTime]) VALUES (N'a     ', N'b', N'70952c96-6fb8-48e5-80b6-a7a56aabbfc4', CAST(N'2024-11-19T14:41:57.710' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'e5077a05-87ea-4d3d-b673-19680d092a59', N'通信網路業', CAST(N'2024-11-18T16:38:53.477' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'552bfa4b-1efc-4cac-b36a-198cba895427', N'綠能環保', CAST(N'2024-11-18T16:38:53.493' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'4ab3ff2e-284d-457a-a7db-258df9587efc', N'玻璃陶瓷', CAST(N'2024-11-18T16:38:53.460' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'75c78c9f-d2d9-43ed-9a7d-26ced6d703b4', N'光電業', CAST(N'2024-11-18T16:38:53.480' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'43381d11-2576-48be-a4f6-2d81220b130d', N'汽車工業', CAST(N'2024-11-18T16:38:53.430' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'92667b99-caea-4764-b565-33cdad31c399', N'其他電子業', CAST(N'2024-11-18T16:38:53.477' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'88a751b1-b22e-4dbb-9f8e-35849c3f4fea', N'電子業', CAST(N'2024-11-18T16:38:53.473' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'f7a2a768-1cb4-4f32-bf1d-378eb53cf546', N'居家生活', CAST(N'2024-11-18T16:38:53.467' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'1fe25901-7929-4955-be9e-37c9d02c80a7', N'電子通路業', CAST(N'2024-11-18T16:38:53.480' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'2ea5d8e0-4aff-4fd8-a41e-48e2c1e6ac7e', N'造紙工業', CAST(N'2024-11-18T16:38:53.460' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'6963f64c-fe4f-4c9d-8cd4-53e971ac5268', N'存託憑證', CAST(N'2024-11-18T16:38:53.497' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'c5ec134b-d18e-448b-9600-54790ebacc56', N'電器電纜', CAST(N'2024-11-18T16:38:53.450' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'4e9e4100-343c-4bd5-b446-5686dea6060a', N'食品工業', CAST(N'2024-11-18T16:38:53.420' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'778f44ca-783b-43bd-ae14-5e90c8182ec3', N'貿易百貨', CAST(N'2024-11-18T16:38:53.483' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'9a66eaf7-f0e2-4194-9a8b-6073ce440f13', N'橡膠工業', CAST(N'2024-11-18T16:38:53.467' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'cd2f8f9f-1596-40a8-b606-6e55f69f5e82', N'電腦及週邊設備業', CAST(N'2024-11-18T16:38:53.470' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'3f3c18bc-9e41-4537-ae8f-70b9dc3c181e', N'其他', CAST(N'2024-11-18T16:38:53.437' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'679af646-f510-49a4-bf0c-71c28ac46b57', N'油電燃氣業', CAST(N'2024-11-18T16:38:53.487' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'fac6ee42-a31a-48e7-bd7b-7ae6165d3b1c', N'化學工業', CAST(N'2024-11-18T16:38:53.457' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'52f76d22-40f7-40d4-965c-810e5ef7a084', N'觀光餐旅', CAST(N'2024-11-18T16:38:53.490' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'6bd6700c-9f6f-4c93-89cd-8d77477d2ee3', N'數位雲端', CAST(N'2024-11-18T16:38:53.493' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'c4fe9ceb-f92b-4f2d-8d47-928843437937', N'建材營造', CAST(N'2024-11-18T16:38:53.423' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'2f3e70b6-22ca-44e4-b8fa-93b8680c610b', N'運動休閒', CAST(N'2024-11-18T16:38:53.443' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'c9eda589-027b-424b-9d22-a5b934e563ee', N'電子零組件業', CAST(N'2024-11-18T16:38:53.447' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'70952c96-6fb8-48e5-80b6-a7a56aabbfc4', N'c', CAST(N'2024-11-19T14:41:57.703' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'2a39a8ed-f4bc-4b25-96e9-a7a7b8c5cfcd', N'鋼鐵工業', CAST(N'2024-11-18T16:38:53.463' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'44be188b-6600-4395-b575-ab8e8a73f7fe', N'產業別', CAST(N'2024-11-18T16:38:53.403' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'6b0abdd1-b25e-42af-bdd8-c6066d33424a', N'資訊服務業', CAST(N'2024-11-18T16:38:53.483' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'4faba753-52a8-4be8-bf39-cd19968a3a24', N'塑膠工業', CAST(N'2024-11-18T16:38:53.423' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'2ddae1d7-f7da-4395-bb28-dc851812c28b', N'3', CAST(N'2024-11-19T15:05:56.540' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'ca814c83-69e9-4e64-953d-e10445a1f001', N'紡織纖維', CAST(N'2024-11-18T16:38:53.440' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'0bf25136-c514-4521-9641-e863c1565ea2', N'水泥工業', CAST(N'2024-11-18T16:38:53.413' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'd52ed7a2-55b3-45d6-86b0-f36cbd2e415b', N'金融保險業', CAST(N'2024-11-18T16:38:53.490' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'add8fc32-39c2-4b57-9f00-f470d4b358e1', N'半導體業', CAST(N'2024-11-18T16:38:53.473' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'94f103f3-c36c-45e7-b755-fe35b4b2cc9d', N'生技醫療業', CAST(N'2024-11-18T16:38:53.453' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'65351a1e-f30a-4d09-bc22-fe875563421a', N'電機機械', CAST(N'2024-11-18T16:38:53.450' AS DateTime), NULL)
GO
INSERT [dbo].[Industry] ([Id], [IndustryName], [CreateTime], [ModifyTime]) VALUES (N'3398f613-e55a-475e-844c-fe98ccb14ccb', N'航運業', CAST(N'2024-11-18T16:38:53.470' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'902a0595-fb2d-4b53-92b4-00188e4f4875', N'1131117', N'11310', N'3607  ', 306778, 270302, 220207, 13.494535446166992, 39.3134651184082, 2529504, 2163591, 16.912300109863281, N'-', CAST(N'2024-11-18T16:30:33.277' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd7669492-8875-4f43-afda-009acfcffcb4', N'1131117', N'11310', N'5533  ', 351172, 469004, 149596, -25.123880386352539, 134.74691772460938, 1994773, 3507848, -43.133995056152344, N'本月營收較去年同期增加達50%以上，係兩期個案營收組成因子不同。', CAST(N'2024-11-18T16:30:33.393' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'fdc84c97-aa31-4a1c-a8fb-00d2cb70def5', N'1131117', N'11310', N'2852  ', 670520, 595431, 606932, 12.610864639282227, 10.476956367492676, 6542637, 6123355, 6.847259521484375, N'-', CAST(N'2024-11-18T16:30:33.113' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'699dba25-6210-40e6-988d-00f51f1d5613', N'1131117', N'11310', N'6835  ', 203445, 194866, 184452, 4.4025125503540039, 10.296987533569336, 2014954, 1808600, 11.409598350524902, N'-', CAST(N'2024-11-18T16:30:34.017' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'021806e8-cbbf-4271-98cc-014693c28fe2', N'1131117', N'11310', N'9942  ', 329653, 322594, 393435, 2.188199520111084, -16.211572647094727, 3238353, 4054025, -20.120054244995117, N'-', CAST(N'2024-11-18T16:30:34.203' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'a32dd5c7-8a95-42f0-8c76-01e5cd7db421', N'1131117', N'11310', N'2762  ', 831554, 819936, 805296, 1.4169398546218872, 3.2606644630432129, 8106683, 7827114, 3.5718019008636475, N'-', CAST(N'2024-11-18T16:30:33.090' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'de4c2ffd-b069-405f-96cf-0309b17c99fe', N'1131117', N'11310', N'1722  ', 910914, 1025790, 886740, -11.198782920837402, 2.7261655330657959, 10081855, 13269158, -24.0203857421875, N'-', CAST(N'2024-11-18T16:30:32.260' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'1441a739-5562-497d-a03a-0347e3992bcc', N'1131117', N'11310', N'3592  ', 1987929, 2097378, 1642719, -5.2183728218078613, 21.014549255371094, 20676025, 15073457, 37.168434143066406, N'-', CAST(N'2024-11-18T16:30:33.270' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ed0b6dd4-1f00-4614-9c64-0416c3cb1a3f', N'1131117', N'11310', N'1201  ', 2045868, 2134895, 1894929, -4.1700878143310547, 7.9654173851013184, 19792280, 17885259, 10.662528991699219, N'-', CAST(N'2024-11-18T16:30:31.177' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'2c224023-bb32-417b-b64a-041c32f56aa3', N'1131117', N'11310', N'2616  ', 666468, 668022, 1360633, -0.23262706398963928, -51.017799377441406, 9404598, 13584592, -30.770111083984375, N'山隆近期因進行油站相關設備更換作業，於更換期間發油量減少影響相關營收', CAST(N'2024-11-18T16:30:33.040' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ea6e5913-a345-45f0-a697-04b0f6eccfbe', N'1131117', N'11310', N'2020  ', 414192, 413855, 410438, 0.081429488956928253, 0.91463267803192139, 4488917, 5966861, -24.769205093383789, N'-', CAST(N'2024-11-18T16:30:32.377' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'dd0b4b35-f7e5-470b-b93a-04e1894ec4dc', N'1131117', N'11310', N'1907  ', 6496237, 6621413, 6548361, -1.8904726505279541, -0.79598546028137207, 64209513, 60662103, 5.8478188514709473, N'-', CAST(N'2024-11-18T16:30:32.350' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'751c2bbd-17a7-49bb-bbb3-0516d9c4f3ea', N'1131117', N'11310', N'1735  ', 214268, 217873, 201721, -1.654633641242981, 6.2199769020080566, 2196019, 1951747, 12.515556335449219, N'-', CAST(N'2024-11-18T16:30:32.287' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'4c2551ad-2b7f-4f3c-84e2-05bbe194c9e8', N'1131117', N'11310', N'2939  ', 35119, 23735, 34142, 47.962924957275391, 2.8615782260894775, 224355, 331120, -32.243598937988281, N'-', CAST(N'2024-11-18T16:30:33.163' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'33be315b-c146-4535-a218-0614778af0b5', N'1131117', N'11310', N'1773  ', 970416, 960837, 835735, 0.99694329500198364, 16.115276336669922, 9132416, 8132839, 12.290628433227539, N'-', CAST(N'2024-11-18T16:30:32.300' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ffed6fa5-a199-4b8c-aaf2-0655e8516fea', N'1131117', N'11310', N'1231  ', 1048386, 920820, 874442, 13.853522300720215, 19.892000198364258, 9788406, 8863900, 10.430013656616211, N'-', CAST(N'2024-11-18T16:30:31.363' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd7ce2d03-0af1-4069-8c83-0663a037d4eb', N'1131117', N'11310', N'6415  ', 1480661, 1632854, 1393139, -9.320673942565918, 6.2823596000671387, 14827500, 12532996, 18.307704925537109, N'-', CAST(N'2024-11-18T16:30:33.823' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'83209282-3f6c-4b2a-ab41-0673037baf20', N'1131117', N'11310', N'3312  ', 1448766, 1544313, 1475245, -6.1870231628417969, -1.7948882579803467, 14773752, 12687817, 16.440456390380859, N'-', CAST(N'2024-11-18T16:30:33.233' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7a418290-3c1e-478c-a31d-0687f36830ee', N'1131117', N'11310', N'2327  ', 10465920, 10415225, 9061774, 0.48673936724662781, 15.495265960693359, 102127187, 89308060, 14.353830337524414, N'-', CAST(N'2024-11-18T16:30:32.607' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'33e7de33-6eb2-4c45-8ee3-06d7600a56b6', N'1131117', N'11310', N'4566  ', 407918, 411492, 315535, -0.86854666471481323, 29.278209686279297, 4007268, 3530617, 13.50050163269043, N'-', CAST(N'2024-11-18T16:30:33.330' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ae0886c6-0a31-48ed-90ef-07469b3f9e0c', N'1131117', N'11310', N'2338  ', 636836, 638494, 612830, -0.259673535823822, 3.917236328125, 6280676, 5931328, 5.8898782730102539, N'-', CAST(N'2024-11-18T16:30:32.653' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'a0c95973-a2e0-4516-ac26-074c2cb6f3a9', N'1131117', N'11310', N'6438  ', 416041, 473940, 423444, -12.216525077819824, -1.7482831478118897, 4253079, 4850993, -12.325599670410156, N'-', CAST(N'2024-11-18T16:30:33.850' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd15b52cb-46d3-4435-b097-0782e4498291', N'1131117', N'11310', N'2206  ', 4886174, 5367010, 5430628, -8.95910358428955, -10.025617599487305, 55972959, 54839420, 2.0670149326324463, N'-', CAST(N'2024-11-18T16:30:32.450' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd0996654-1bed-4d86-ac1c-078d6456a1e2', N'1131117', N'11310', N'1611  ', 90478, 86346, 113349, 4.7853984832763672, -20.177505493164062, 954406, 1093338, -12.707140922546387, N'-', CAST(N'2024-11-18T16:30:32.183' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'810dd2aa-6efb-4fb1-bbde-07aa11c02f96', N'1131117', N'11310', N'2440  ', 331126, 307032, 256019, 7.8473906517028809, 29.336494445800781, 3197846, 2378840, 34.428798675537109, N'-', CAST(N'2024-11-18T16:30:32.833' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'905c12f6-6f79-4b1e-a598-07d7003267ae', N'1131117', N'11310', N'2208  ', 836411, 933903, 1608688, -10.439199447631836, -48.006637573242188, 12079380, 18457119, -34.554359436035156, N'-', CAST(N'2024-11-18T16:30:32.457' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'470a04e8-f792-4c83-b8a5-08eb1a2d3a2a', N'1131117', N'11310', N'1536  ', 427843, 446389, 518613, -4.1546721458435059, -17.502452850341797, 5018232, 5578526, -10.043764114379883, N'-', CAST(N'2024-11-18T16:30:32.120' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'5256b429-640e-444b-bc85-099aa2fa751b', N'1131117', N'11310', N'2239  ', 1517127, 1728243, 2124106, -12.215642929077148, -28.575738906860352, 17512074, 19701354, -11.112332344055176, N'-', CAST(N'2024-11-18T16:30:32.487' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd0fb041a-620b-42f9-abbb-0a522934d9a4', N'1131117', N'11310', N'6446  ', 914288, 932418, 547405, -1.9444068670272827, 67.022224426269531, 7587568, 4006165, 89.397293090820312, N'本月及本年累計營收較去年成長，主要來自認列美國子公司PharmaEssentia USA Corp. 之營收。', CAST(N'2024-11-18T16:30:33.860' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'cf4ff879-74c8-4c89-98e4-0a915bc1f8dd', N'1131117', N'11310', N'3092  ', 135337, 157562, 176400, -14.105558395385742, -23.278345108032227, 1651218, 1811371, -8.8415346145629883, N'-', CAST(N'2024-11-18T16:30:33.220' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'bc1e4319-df3b-450b-ac90-0ab1bc5b254e', N'1131117', N'11310', N'1465  ', 36035, 40150, 31064, -10.249066352844238, 16.0024471282959, 409178, 467240, -12.426589965820313, N'-', CAST(N'2024-11-18T16:30:31.993' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'694f63cf-194b-4aef-8ef4-0ac49b91f894', N'1131117', N'11310', N'4440  ', 95292, 104341, 73576, -8.6725254058837891, 29.515058517456055, 932390, 819624, 13.758259773254395, N'-', CAST(N'2024-11-18T16:30:33.313' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'430697d0-e6ac-4079-951d-0b06c1e3c5a9', N'1131117', N'11310', N'1733  ', 156748, 186470, 134140, -15.939292907714844, 16.854032516479492, 1554963, 1400449, 11.033175468444824, N'-', CAST(N'2024-11-18T16:30:32.280' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'586ad73e-fabf-41b5-aa34-0b56eef1c97c', N'1131117', N'11310', N'6226  ', 55852, 54061, 51725, 3.3129243850708008, 7.9787335395812988, 524698, 628750, -16.549026489257812, N'-', CAST(N'2024-11-18T16:30:33.727' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7d99ec7f-5c16-4c52-b4e8-0b57d48e33a9', N'1131117', N'11310', N'8487  ', 86954, 74693, 131679, 16.415193557739258, -33.965171813964844, 1275736, 839221, 52.014308929443359, N'年營收年增率52.01%，主係今年度轉播巴黎奧運所致；月營收年增率-33.97%，主係去年同期轉播杭州亞運所致。', CAST(N'2024-11-18T16:30:34.157' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'727faee1-eddc-4084-b69f-0c46d3237d18', N'1131117', N'11310', N'2489  ', 1881900, 2461537, 1648132, -23.547767639160156, 14.183815002441406, 19535349, 13752971, 42.044574737548828, N'-', CAST(N'2024-11-18T16:30:32.920' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'412a88f5-6701-4821-8f8c-0c79926ace06', N'1131117', N'11310', N'3090  ', 1146636, 1062826, 916188, 7.8855805397033691, 25.152915954589844, 10134065, 8914427, 13.681619644165039, N'-', CAST(N'2024-11-18T16:30:33.220' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'00938141-190c-463e-8f92-0d179d666bda', N'1131117', N'11310', N'2630  ', 331644, 524120, 420778, -36.723651885986328, -21.183141708374023, 4259237, 3995568, 6.599036693572998, N'-', CAST(N'2024-11-18T16:30:33.043' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'e5c13289-6ee2-4e3f-a934-0d43e2402065', N'1131117', N'11310', N'3266  ', 1449234, 432539, 235164, 235.05279541015625, 516.2652587890625, 3311604, 2831356, 16.961767196655273, N'因營建收入受政策、全部完工法及建案規模不同等影響，故營收波動較大。', CAST(N'2024-11-18T16:30:33.230' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'262033ea-2e2c-40d5-994a-0e0486a9ac0e', N'1131117', N'11310', N'1603  ', 397191, 312564, 360165, 27.075094223022461, 10.280287742614746, 3739182, 3408365, 9.7060317993164062, N'-', CAST(N'2024-11-18T16:30:32.167' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9757d25a-37aa-42be-b61d-0e592a993cf5', N'1131117', N'11310', N'9911  ', 831746, 852354, 719203, -2.4177746772766113, 15.648294448852539, 8008611, 6687510, 19.754751205444336, N'-', CAST(N'2024-11-18T16:30:34.173' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9145f1ac-0d86-48e4-831c-0e636986b65e', N'1131117', N'11310', N'2903  ', 3480681, 2575431, 3624942, 35.149456024169922, -3.9796774387359619, 27840666, 29411932, -5.3422741889953613, N'-', CAST(N'2024-11-18T16:30:33.150' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'0d7b2e93-8b4d-4c4c-98f9-0eacdbf5dd22', N'1131117', N'11310', N'9906  ', 205565, 150251, 41885, 36.814395904541016, 390.7843017578125, 3148315, 3658407, -13.943008422851563, N'本月營收與上月營收之差異，主係於今年新個案及成屋仍持續入帳。', CAST(N'2024-11-18T16:30:34.170' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd95888ef-8353-4fe2-8505-0eb18177e95e', N'1131117', N'11310', N'8476  ', 87620, 102082, 46783, -14.167041778564453, 87.290252685546875, 1386375, 1316573, 5.30179500579834, N'新承接之工案進入密集施工期，故營收較去年明顯成長。', CAST(N'2024-11-18T16:30:34.153' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'4dbf9c7c-e525-4279-91ab-0f121da02820', N'1131117', N'11310', N'3030  ', 515132, 557973, 280850, -7.6779699325561523, 83.418907165527344, 5378759, 3410972, 57.689918518066406, N'本月較去年同期增加83%，主因伺服器、半導體以及車電產業需求增加 累計較去年同期增加58%，主因電腦、伺服器及手機產業需求增加', CAST(N'2024-11-18T16:30:33.190' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'54a5d261-24e6-48c1-985f-0fd21b88c605', N'1131117', N'11310', N'2603  ', 41525743, 44637217, 23364349, -6.9705824851989746, 77.7312240600586, 389281931, 230388028, 68.967948913574219, N'運價受市場供需影響，以致收入增加。', CAST(N'2024-11-18T16:30:33.017' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'481f03d3-a96d-49fc-a86a-100688ba784a', N'1131117', N'11310', N'6451  ', 548671, 469995, 394278, 16.7397518157959, 39.158412933349609, 4042490, 4270673, -5.3430218696594238, N'-', CAST(N'2024-11-18T16:30:33.867' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'e8e462fc-fa49-4aec-98a2-100ada1ec483', N'1131117', N'11310', N'6582  ', 133915, 197884, 97087, -32.326515197753906, 37.932987213134766, 1380262, 734544, 87.9073257446289, N'本年累計營業收入受市場狀況影響，營收增加。', CAST(N'2024-11-18T16:30:33.917' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'cc1b09d0-ab3e-40c4-87e8-10d77d9ae284', N'1131117', N'11310', N'6669  ', 35381437, 34504530, 18942270, 2.5414257049560547, 86.7856216430664, 280308921, 202293554, 38.565425872802734, N'主要係客戶需求強勁', CAST(N'2024-11-18T16:30:33.943' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9077f3f4-205b-4ccd-8633-112d1a7ac5bb', N'1131117', N'11310', N'3705  ', 744593, 612214, 618008, 21.622995376586914, 20.482744216918945, 6620821, 5701580, 16.122566223144531, N'-', CAST(N'2024-11-18T16:30:33.287' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'0911ca6e-e51b-43ec-9cb1-113318cc053f', N'1131117', N'11310', N'6689  ', 1180567, 1079999, 926082, 9.3118600845336914, 27.479747772216797, 10318722, 7974386, 29.398326873779297, N'-', CAST(N'2024-11-18T16:30:33.953' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'983acc10-35b3-474f-bdee-116682a5394d', N'1131117', N'11310', N'6120  ', 1184372, 1655913, 1405690, -28.476194381713867, -15.744439125061035, 17438605, 14440657, 20.760467529296875, N'-', CAST(N'2024-11-18T16:30:33.407' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'89381fa7-f6a6-44cb-925f-117a8173b2d3', N'1131117', N'11310', N'2387  ', 1914108, 2135139, 1883926, -10.352066040039063, 1.6020798683166504, 19511338, 18050338, 8.09403133392334, N'-', CAST(N'2024-11-18T16:30:32.753' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'a54c18f5-1211-43f6-89d1-11c9d099667e', N'1131117', N'11310', N'3694  ', 696194, 837574, 727089, -16.879703521728516, -4.2491359710693359, 7680078, 8005894, -4.0697016716003418, N'-', CAST(N'2024-11-18T16:30:33.287' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'72c22ab3-bc8d-4eb0-9d3e-128247c26794', N'1131117', N'11310', N'4562  ', 59671, 76153, 43827, -21.643270492553711, 36.151229858398438, 620579, 606800, 2.2707645893096924, N'-', CAST(N'2024-11-18T16:30:33.323' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'6d9ccba7-9abc-4dec-b0cd-129a0e46da67', N'1131117', N'11310', N'5258  ', 683768, 802323, 745075, -14.776468276977539, -8.2282991409301758, 6369368, 6509768, -2.1567587852478027, N'-', CAST(N'2024-11-18T16:30:33.373' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'36003cb1-ce6b-4f60-8587-129c97335696', N'1131117', N'11310', N'1795  ', 1884995, 1186821, 911653, 58.827236175537109, 106.76671600341797, 16060271, 14450526, 11.139698028564453, N'主係本月血癌用藥Lenalidomide於美國市場銷售量較去年同期增加所致', CAST(N'2024-11-18T16:30:32.313' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'a070863e-e096-46ed-8fbb-129e4633b7e5', N'1131117', N'11310', N'6531  ', 445184, 417130, 381694, 6.7254810333251953, 16.633743286132812, 3398610, 3439164, -1.1791819334030151, N'-', CAST(N'2024-11-18T16:30:33.890' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'2ab2e4dc-ea21-41ee-b74e-1355e133779c', N'1131117', N'11310', N'3010  ', 6611892, 6816781, 6095725, -3.0056562423706055, 8.46768856048584, 66430137, 55660284, 19.349260330200195, N'-', CAST(N'2024-11-18T16:30:33.170' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ff803e28-29b2-4301-bac0-1358d2e01b48', N'1131117', N'11310', N'2608  ', 1043205, 1053658, 991019, -0.99206763505935669, 5.26589298248291, 10368484, 9900206, 4.7299823760986328, N'-', CAST(N'2024-11-18T16:30:33.027' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'66dc608b-753f-487c-a63d-1375ab382bc8', N'1131117', N'11310', N'2305  ', 63109, 66227, 39934, -4.7080497741699219, 58.033256530761719, 597935, 450033, 32.864700317382812, N'113年10月當月光電子產品營收增加', CAST(N'2024-11-18T16:30:32.537' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'fb0fb2c6-0927-4e18-bc12-13d12c3d7bab', N'1131117', N'11310', N'2323  ', 714416, 640251, 680434, 11.583738327026367, 4.9941654205322266, 6224265, 6152808, 1.161372184753418, N'無', CAST(N'2024-11-18T16:30:32.593' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'bf8b4c94-23c6-433e-be9a-1429eb1a82c5', N'1131117', N'11310', N'2845  ', 1112100, 964237, 953894, 15.334715843200684, 16.585281372070312, 11022844, 10775311, 2.2972238063812256, N'-', CAST(N'2024-11-18T16:30:33.107' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c80c6857-549f-4820-9661-14978bce869f', N'1131117', N'11310', N'4108  ', 9493, 15687, 16135, -39.48492431640625, -41.165168762207031, 126025, 131235, -3.9699776172637939, N'本期營收減少係國外出貨時間差，國內外業務持續推廣中。', CAST(N'2024-11-18T16:30:33.303' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'bc342dd9-910f-4136-8775-14e0b6e69084', N'1131117', N'11310', N'2468  ', 136237, 205182, 254908, -33.601875305175781, -46.554443359375, 1772969, 2006437, -11.635950088500977, N'-', CAST(N'2024-11-18T16:30:32.883' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'cc1e598f-0e8f-4516-8312-14f71145f67c', N'1131117', N'11310', N'6558  ', 92648, 110384, 100168, -16.067546844482422, -7.507387638092041, 965210, 1015587, -4.9603824615478516, N'-', CAST(N'2024-11-18T16:30:33.910' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'31955b3e-a947-48c5-bfae-15325b3d1e22', N'1131117', N'11310', N'2505  ', 68568, 71832, 70186, -4.5439357757568359, -2.3053030967712402, 541432, 504860, 7.2439885139465332, N'本年度營建收入534,309仟元，租賃收入7,123仟元。', CAST(N'2024-11-18T16:30:32.940' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b9dda5a5-40fe-4999-bc32-15625f221eb6', N'1131117', N'11310', N'6215  ', 130075, 156770, 83853, -17.028129577636719, 55.122653961181641, 1234123, 822423, 50.059398651123047, N'所屬產業復甦，帶動自動化零組件及設備需求增加', CAST(N'2024-11-18T16:30:33.703' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'da171331-567a-4fa6-9760-15632f8393b3', N'1131117', N'11310', N'2722  ', 39891, 46968, 50522, -15.067706108093262, -21.042318344116211, 551729, 671485, -17.834501266479492, N'-', CAST(N'2024-11-18T16:30:33.073' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'bde9b23b-b393-461b-b21b-15a2af9d7f6b', N'1131117', N'11310', N'3321  ', 152677, 165969, 128999, -8.0087242126464844, 18.355180740356445, 1629742, 1292828, 26.060234069824219, N'-', CAST(N'2024-11-18T16:30:33.233' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f619a146-41a3-46ea-8c72-15d0c5b2bba9', N'1131117', N'11310', N'2006  ', 4561679, 4541875, 5228588, 0.43603137135505676, -12.755049705505371, 49787016, 50183454, -0.789977490901947, N'-', CAST(N'2024-11-18T16:30:32.357' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'1223d6ff-bb99-4d77-9007-15d3023d1e89', N'1131117', N'11310', N'2330  ', 314239713, 251872717, 243202811, 24.761314392089844, 29.208915710449219, 2340086234, 1779409796, 31.509124755859375, N'-', CAST(N'2024-11-18T16:30:32.630' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd27d28dc-4cd0-4e25-a9f9-1695b4ff97ad', N'1131117', N'11310', N'9925  ', 667527, 648220, 629020, 2.9784641265869141, 6.1217451095581055, 6545487, 6441581, 1.613051176071167, N'-', CAST(N'2024-11-18T16:30:34.190' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'21d00584-7163-415e-b0ab-16e68a21f24d', N'1131117', N'11310', N'2329  ', 1315755, 1329392, 1624056, -1.02580726146698, -18.983396530151367, 13466195, 13578207, -0.8249395489692688, N'-', CAST(N'2024-11-18T16:30:32.620' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'0ce3bd13-71d1-4031-8b4d-175fb90c7ede', N'1131117', N'11310', N'8478  ', 422215, 632859, 404459, -33.284507751464844, 4.3900618553161621, 4889405, 5092505, -3.9882140159606934, N'主係認列遊艇銷貨收入增減所致', CAST(N'2024-11-18T16:30:34.153' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'82647fc2-7175-4d24-bd07-177dd8b7a9a4', N'1131117', N'11310', N'2836  ', 339734, 366876, 289072, -7.3981399536132812, 17.525737762451172, 3627236, 3217207, 12.744874954223633, N'-', CAST(N'2024-11-18T16:30:33.103' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'fec00e72-4a58-4ae9-8a1b-179e3c12b60e', N'1131117', N'11310', N'6136  ', 43065, 33245, 43899, 29.538276672363281, -1.8998154401779175, 404378, 426350, -5.1535124778747559, N'-', CAST(N'2024-11-18T16:30:33.413' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd4b8aebe-fc46-4cc0-873b-17cf1e7aceac', N'1131117', N'11310', N'3229  ', 86074, 65115, 76333, 32.187667846679688, 12.761191368103027, 761866, 780930, -2.4411919116973877, N'-', CAST(N'2024-11-18T16:30:33.227' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'4c58e88f-c421-4321-9750-18823cab6980', N'1131117', N'11310', N'4588  ', 77287, 79337, 86851, -2.5839142799377441, -11.011962890625, 821881, 917491, -10.420810699462891, N'因按照合約規範，每月出貨數量依客戶通知出貨。', CAST(N'2024-11-18T16:30:33.337' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'5f64d6dd-2174-495b-a9d7-1891fd101628', N'1131117', N'11310', N'1453  ', 115, 114, 115, 0.87719297409057617, 0, 1146, 628, 82.484077453613281, N'本年營收較去年同期增加，係因本月房屋出租金額較高所致。', CAST(N'2024-11-18T16:30:31.957' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'5c146da6-99fb-4014-9c4f-18a2849db83c', N'1131117', N'11310', N'3037  ', 10479818, 10837646, 8789447, -3.301713228225708, 19.23182487487793, 96472188, 87136216, 10.714226722717285, N'-', CAST(N'2024-11-18T16:30:33.197' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'642790e1-d990-4309-9bf4-18a800bf9420', N'1131117', N'11310', N'6579  ', 524677, 595341, 667772, -11.869500160217285, -21.428720474243164, 5980336, 6715717, -10.950148582458496, N'自112年5月起新增合併子公司捷波；113年1~10月併入其營收為1,064,851仟元', CAST(N'2024-11-18T16:30:33.913' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'69735e99-8168-425b-a296-18c4f653f985', N'1131117', N'11310', N'2379  ', 8947322, 9829641, 7865762, -8.9761056900024414, 13.750225067138672, 95996398, 80459913, 19.309597015380859, N'無', CAST(N'2024-11-18T16:30:32.747' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'da490685-b528-4f28-af3f-18f0aaf88e4e', N'1131117', N'11310', N'6456  ', 6411064, 6591483, 7618831, -2.7371532917022705, -15.852392196655273, 56142336, 60045025, -6.4996042251586914, N'-', CAST(N'2024-11-18T16:30:33.870' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'925321aa-edc5-4242-b344-1909206d9ad4', N'1131117', N'11310', N'1504  ', 4243665, 4368723, 4664515, -2.8625755310058594, -9.022374153137207, 45976256, 49695792, -7.4846096038818359, N'-', CAST(N'2024-11-18T16:30:32.053' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'105bb384-bc04-4e9d-bbb2-19148a8492ee', N'1131117', N'11310', N'1476  ', 3300689, 3189368, 2856878, 3.4903781414031982, 15.534825325012207, 30558314, 25148406, 21.511932373046875, N'-', CAST(N'2024-11-18T16:30:32.023' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'6f4a32e4-34ca-419c-87df-198dcebe0804', N'1131117', N'11310', N'2383  ', 5817800, 5940565, 4348694, -2.0665543079376221, 33.782695770263672, 51632383, 32762561, 57.595687866210938, N'受惠於AI伺服器成長力道', CAST(N'2024-11-18T16:30:32.750' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'a7d3c5bf-ec23-4904-997a-1994980fd7c5', N'1131117', N'11310', N'4958  ', 20952920, 19336751, 20873714, 8.3580169677734375, 0.37945330142974854, 136483507, 117875424, 15.786228179931641, N'-', CAST(N'2024-11-18T16:30:33.360' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'069859d3-6b75-4ad9-940f-19aa284de4e0', N'1131117', N'11310', N'2038  ', 729717, 740124, 839937, -1.4061157703399658, -13.12241268157959, 7791710, 7609380, 2.3961217403411865, N'-', CAST(N'2024-11-18T16:30:32.407' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'fa9f921b-a0c3-4ddd-868a-1a8f2ac8e927', N'1131117', N'11310', N'2373  ', 880893, 989382, 951405, -10.965330123901367, -7.4113550186157227, 9309209, 9668554, -3.7166364192962646, N'-', CAST(N'2024-11-18T16:30:32.733' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'1b47343b-392c-4325-8d03-1acc2c066110', N'1131117', N'11310', N'2929  ', 269528, 157477, 306336, 71.153884887695312, -12.015564918518066, 1576121, 1789070, -11.902776718139648, N'-', CAST(N'2024-11-18T16:30:33.163' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'dbfb39dc-d827-4d3d-8a13-1b399de48757', N'1131117', N'11310', N'4766  ', 2090536, 1976467, 1876873, 5.7713584899902344, 11.383988380432129, 18951621, 16940654, 11.870656967163086, N'-', CAST(N'2024-11-18T16:30:33.343' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7e74819e-6f7f-412a-b6c2-1b761ecc5e09', N'1131117', N'11310', N'1417  ', 29892, 32097, 112364, -6.8698010444641113, -73.397171020507812, 515769, 1229425, -58.047950744628906, N'因結束國軍服裝供售業務，致使營收減少', CAST(N'2024-11-18T16:30:31.777' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'bf4430d8-a240-4f90-ba67-1baa118b936c', N'1131117', N'11310', N'2545  ', 1057090, 1075407, 299138, -1.7032620906829834, 253.37870788574219, 11222561, 2325438, 382.59988403320312, N'因本期成屋銷售情形較去年同期佳所致', CAST(N'2024-11-18T16:30:32.997' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'cb96839a-40d5-4b9b-b456-1bcdd67f52ca', N'1131117', N'11310', N'6115  ', 597176, 601207, 511397, -0.67048454284667969, 16.773466110229492, 6129613, 5362892, 14.296782493591309, N'-', CAST(N'2024-11-18T16:30:33.407' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'dfb03cb5-e54a-46d7-89e1-1bee2ecef846', N'1131117', N'11310', N'6914  ', 383101, 390403, 374817, -1.8703749179840088, 2.2101452350616455, 3827336, 3500323, 9.3423662185668945, N'-', CAST(N'2024-11-18T16:30:34.047' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'1a0f8998-69c2-4330-a760-1c6bcf67a427', N'1131117', N'11310', N'9934  ', 1597839, 1463163, 1599367, 9.2044429779052734, -0.09553779661655426, 15354851, 15613426, -1.65610671043396, N'-', CAST(N'2024-11-18T16:30:34.197' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'68568347-b104-4265-bd00-1c86d01e20bb', N'1131117', N'11310', N'8940  ', 101963, 133124, 158633, -23.407499313354492, -35.723968505859375, 1336760, 1179952, 13.28935432434082, N'-', CAST(N'2024-11-18T16:30:34.160' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'6851f99c-f5e0-426a-9337-1c9e1a0aba89', N'1131117', N'11310', N'2634  ', 3244624, 2552613, 3204303, 27.109907150268555, 1.2583391666412354, 31261481, 32664287, -4.29461669921875, N'-', CAST(N'2024-11-18T16:30:33.050' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'0fd3b32a-28bb-4c50-abb8-1cbf648d75cb', N'1131117', N'11310', N'2034  ', 1318957, 1158954, 1328044, 13.805810928344727, -0.684239387512207, 11753457, 13102320, -10.294840812683106, N'土耳其子公司因處高度通貨膨脹環境，應依IAS 29編製財報，故其本年度營收已按土耳其消費者物價指數波動率重述。', CAST(N'2024-11-18T16:30:32.403' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'143b7189-28cc-4cbe-9667-1ce9a145fa4b', N'1131117', N'11310', N'6781  ', 951990, 862092, 810279, 10.427889823913574, 17.489160537719727, 7798600, 8355410, -6.6640653610229492, N'-', CAST(N'2024-11-18T16:30:33.990' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'30f274ee-3d89-41bb-bfcc-1d02f71bb5a7', N'1131117', N'11310', N'2707  ', 479528, 521415, 541028, -8.0333328247070312, -11.36724853515625, 5064958, 5508537, -8.0525732040405273, N'註:太魯閣晶英受0403地震及颱風影響，暫停營業', CAST(N'2024-11-18T16:30:33.070' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'a24f84e8-63aa-4570-b731-1d230447bc5b', N'1131117', N'11310', N'1717  ', 3526514, 3618106, 3497006, -2.5314903259277344, 0.84380751848220825, 36450167, 35189732, 3.5818259716033936, N'-', CAST(N'2024-11-18T16:30:32.247' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'55fd1312-b5ec-45ce-95bd-1db7096b7c0c', N'1131117', N'11310', N'2801  ', 3074788, 3482721, 3117120, -11.713054656982422, -1.3580484390258789, 35146105, 32488350, 8.18064022064209, N'-', CAST(N'2024-11-18T16:30:33.090' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'4447685a-2e92-48ff-8338-1e12d2b2a8c9', N'1131117', N'11310', N'4935  ', 542958, 590175, 550204, -8.0005083084106445, -1.3169660568237305, 5724642, 4931695, 16.078590393066406, N'-', CAST(N'2024-11-18T16:30:33.353' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'4f6256b4-a58e-458d-bb3b-1e794febf05e', N'1131117', N'11310', N'2353  ', 18819702, 26310042, 19352086, -28.469509124755859, -2.7510418891906738, 217405619, 197518361, 10.068561553955078, N'-', CAST(N'2024-11-18T16:30:32.687' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3bc4127e-c8af-468a-bc93-1f3e01406fae', N'1131117', N'11310', N'6771  ', 50302, 51645, 51499, -2.60044527053833, -2.32431697845459, 517659, 501681, 3.1848924160003662, N'-', CAST(N'2024-11-18T16:30:33.983' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'307e6682-6218-41ff-bd8b-1f776d6c9a63', N'1131117', N'11310', N'2633  ', 4120049, 4456901, 4396204, -7.5579872131347656, -6.2816691398620605, 43870539, 41042709, 6.8899693489074707, N'-', CAST(N'2024-11-18T16:30:33.047' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c1a4595a-51d2-4e47-bf7a-1fa25a827287', N'1131117', N'11310', N'6782  ', 389345, 309984, 218136, 25.601644515991211, 78.487274169921875, 3147453, 1927164, 63.320453643798828, N'主係去年同期受客戶庫存調整影響，使得基期較低。', CAST(N'2024-11-18T16:30:33.990' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'655afe0e-e3e2-4671-83b6-1fc9b8e97855', N'1131117', N'11310', N'4961  ', 1695577, 1782935, 1265099, -4.8996739387512207, 34.027217864990234, 15748842, 13784326, 14.251810073852539, N'-', CAST(N'2024-11-18T16:30:33.367' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b977e31b-4a83-4baf-8b57-1fd9ce8da5e9', N'1131117', N'11310', N'3543  ', 263343, 262441, 273178, 0.34369629621505737, -3.6002166271209717, 2664578, 2684906, -0.7571215033531189, N'-', CAST(N'2024-11-18T16:30:33.263' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8da696e6-6bbe-4f52-becf-202281a2a605', N'1131117', N'11310', N'8210  ', 1046169, 1465146, 1124574, -28.596261978149414, -6.9719734191894531, 11698418, 7642420, 53.072166442871094, N'終端客戶所需產品大量出貨', CAST(N'2024-11-18T16:30:34.113' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'04a56239-dd13-4b9b-9902-20b888802d1d', N'1131117', N'11310', N'1256  ', 205949, 432465, 222574, -52.377880096435547, -7.4694256782531738, 3575665, 4126970, -13.358590126037598, N'-', CAST(N'2024-11-18T16:30:31.477' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'557d53fd-45ce-4cce-a66b-20d3e52e7e70', N'1131117', N'11310', N'4133  ', 28291, 27464, 34484, 3.0112147331237793, -17.959053039550781, 295504, 322559, -8.3876123428344727, N'-', CAST(N'2024-11-18T16:30:33.307' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'14d56b35-28f5-42de-9eaf-20edf958b2d9', N'1131117', N'11310', N'2397  ', 968421, 880733, 692963, 9.9562520980834961, 39.750751495361328, 7567187, 12195580, -37.951396942138672, N'-', CAST(N'2024-11-18T16:30:32.770' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'fa8bbe32-1d49-4255-8d22-20ef92896c8b', N'1131117', N'11310', N'5871  ', 8622001, 8553950, 8425309, 0.79555058479309082, 2.3345375061035156, 85598710, 80887192, 5.824800968170166, N'-', CAST(N'2024-11-18T16:30:33.400' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b5db772b-8e6f-42f2-8d17-20f8c1428dcf', N'1131117', N'11310', N'3596  ', 4017880, 4060581, 4787154, -1.0515983104705811, -16.069547653198242, 40898230, 41818056, -2.1995904445648193, N'-', CAST(N'2024-11-18T16:30:33.273' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'21b00fbe-14ad-4c52-9833-210bbb0c9be1', N'1131117', N'11310', N'3346  ', 802050, 861323, 791529, -6.8816227912902832, 1.3291995525360107, 7560186, 6662188, 13.479024887084961, N'-', CAST(N'2024-11-18T16:30:33.237' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9472f73a-c8dc-434d-8e20-214e0d800236', N'1131117', N'11310', N'9918  ', 140254, 116040, 142930, 20.866943359375, -1.872245192527771, 1665554, 1604706, 3.7918472290039062, N'-', CAST(N'2024-11-18T16:30:34.183' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'54d0d1ce-2af3-417b-b1b8-215106903c6f', N'1131117', N'11310', N'3583  ', 881700, 866210, 607966, 1.7882499694824219, 45.024559020996094, 7999392, 5580579, 43.343406677246094, N'-', CAST(N'2024-11-18T16:30:33.270' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'dec3f416-e6c1-40ec-ac9e-216a79b5a6e1', N'1131117', N'11310', N'2356  ', 64685079, 56253892, 40401753, 14.987739562988281, 60.104633331298828, 513165232, 427076679, 20.157634735107422, N'新增訂單與季節性需求致營收增加', CAST(N'2024-11-18T16:30:32.693' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'27329e4f-d82b-4d31-9d65-2201abed3d97', N'1131117', N'11310', N'2867  ', 8780488, 8969138, 6431665, -2.1033236980438232, 36.519672393798828, 112715281, 103552790, 8.8481349945068359, N'-', CAST(N'2024-11-18T16:30:33.120' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8c4c3421-8b7d-4302-8e61-228ed3b36ac0', N'1131117', N'11310', N'6504  ', 640535, 622976, 601126, 2.8185677528381348, 6.5558633804321289, 5464439, 5141453, 6.2819986343383789, N'-', CAST(N'2024-11-18T16:30:33.880' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'2f0f1563-444d-43eb-943c-22f560c9636f', N'1131117', N'11310', N'4540  ', 142517, 172404, 149449, -17.335445404052734, -4.638371467590332, 1807012, 2258585, -19.993623733520508, N'-', CAST(N'2024-11-18T16:30:33.317' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'fd542766-bc58-4fa5-b924-23112b820115', N'1131117', N'11310', N'3576  ', 303476, 427365, 782099, -28.989036560058594, -61.197238922119141, 4496133, 11051848, -59.317817687988281, N'太陽能市場需求減緩，導致本年營收較去年減少。', CAST(N'2024-11-18T16:30:33.270' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f7826f1e-926d-4de6-8080-238791f720a0', N'1131117', N'11310', N'2832  ', 569449, 615067, 561873, -7.416752815246582, 1.3483474254608154, 6191385, 5688428, 8.8417577743530273, N'-', CAST(N'2024-11-18T16:30:33.100' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c15fe7f8-2b14-4106-a0d5-2433daf800ea', N'1131117', N'11310', N'8422  ', 326256, 337460, 333528, -3.3200972080230713, -2.1803267002105713, 4199127, 3549317, 18.308029174804688, N'-', CAST(N'2024-11-18T16:30:34.140' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'72a0df27-19a6-4557-8b3f-24722f262a31', N'1131117', N'11310', N'6671  ', 156360, 186894, 139092, -16.337602615356445, 12.414804458618164, 1625650, 1542889, 5.3640279769897461, N'-', CAST(N'2024-11-18T16:30:33.947' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'5cf2180c-64b6-4be2-b5d3-2481efcf2643', N'1131117', N'11310', N'6515  ', 648059, 711340, 256178, -8.8960275650024414, 152.97215270996094, 4907118, 3265218, 50.2845458984375, N'受惠於全球AI及HPC客戶終端應用需求強勁持續拉貨，本月營收變動達50%以上', CAST(N'2024-11-18T16:30:33.883' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9aae0e4b-41bf-4ae4-9863-251b9033dc0f', N'1131117', N'11310', N'3043  ', 89310, 68117, 55860, 31.112644195556641, 59.8818473815918, 691380, 1201689, -42.465980529785156, N'大客戶已消化庫存,陸續下單,故營收較去年同期增加', CAST(N'2024-11-18T16:30:33.203' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'167f517e-8f80-45ca-824f-2569339214eb', N'1131117', N'11310', N'1225  ', 1079648, 1030261, 1212955, 4.7936396598815918, -10.990267753601074, 10636924, 12125626, -12.277320861816406, N'-', CAST(N'2024-11-18T16:30:31.327' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'205387d6-5404-41bd-b4ac-256c63a5692a', N'1131117', N'11310', N'1605  ', 14774899, 14503449, 15224362, 1.8716237545013428, -2.9522616863250732, 147379234, 161744038, -8.881195068359375, N'-', CAST(N'2024-11-18T16:30:32.177' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8c2c1e1f-72b0-43ce-9689-25e0b86d70f5', N'1131117', N'11310', N'1217  ', 360149, 487276, 323973, -26.089321136474609, 11.166362762451172, 4422067, 4280118, 3.3164739608764648, N'-', CAST(N'2024-11-18T16:30:31.277' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'de4bb40e-755f-4516-8cf6-26038ff5e3a9', N'1131117', N'11310', N'2515  ', 1909355, 2186725, 1558967, -12.68426513671875, 22.475652694702148, 18396218, 15371121, 19.680393218994141, N'-', CAST(N'2024-11-18T16:30:32.950' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'a3b98d4f-e83b-4141-808b-26eda677df96', N'1131117', N'11310', N'1419  ', 374628, 395516, 327793, -5.28120231628418, 14.287980079650879, 3260173, 2656250, 22.735923767089844, N'-', CAST(N'2024-11-18T16:30:31.790' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'e7ec1250-cc62-413e-9552-2732bc960173', N'1131117', N'11310', N'1466  ', 322801, 270765, 243687, 19.218141555786133, 32.465415954589844, 2417821, 2004410, 20.625072479248047, N'-', CAST(N'2024-11-18T16:30:31.997' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'58536a50-d458-44b5-b4be-27891f589f82', N'1131117', N'11310', N'4555  ', 112289, 132029, 91263, -14.951260566711426, 23.038909912109375, 1220122, 1128564, 8.1127872467041016, N'-', CAST(N'2024-11-18T16:30:33.323' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7a9654b9-c8a8-4269-945f-27936f89e7dc', N'1131117', N'11310', N'1614  ', 372021, 453701, 351880, -18.0030460357666, 5.7238264083862305, 4774163, 4921721, -2.9980976581573486, N'-', CAST(N'2024-11-18T16:30:32.190' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'1dfff50d-b1c8-4721-9e71-27963511bf0b', N'1131117', N'11310', N'2114  ', 129999, 121761, 136150, 6.7657132148742676, -4.5178112983703613, 1193110, 1281914, -6.9274539947509766, N'-', CAST(N'2024-11-18T16:30:32.443' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ca90a130-5cd7-43b8-9660-27b7bcb0b970', N'1131117', N'11310', N'6281  ', 1316831, 1521664, 1430515, -13.461118698120117, -7.9470682144165039, 16830770, 17543317, -4.0616436004638672, N'-', CAST(N'2024-11-18T16:30:33.783' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'57fb7190-df1c-474d-8223-27d514460190', N'1131117', N'11310', N'2511  ', 527381, 623480, 632213, -15.413325309753418, -16.581752777099609, 6377896, 6898728, -7.5496816635131836, N'-', CAST(N'2024-11-18T16:30:32.947' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd9b57b28-46bb-42b2-9347-284e90efd58d', N'1131117', N'11310', N'4438  ', 1226930, 2017626, 1113161, -39.189422607421875, 10.220354080200195, 14311403, 15036925, -4.8249359130859375, N'-', CAST(N'2024-11-18T16:30:33.313' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'4cdf7e62-a0c2-4a63-be47-2906463ace7d', N'1131117', N'11310', N'1326  ', 26730525, 27508402, 30166153, -2.8277797698974609, -11.389016151428223, 294046018, 275187944, 6.8527979850769043, N'-', CAST(N'2024-11-18T16:30:31.723' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'a516569f-baeb-4ad0-9b6f-2929f98e18be', N'1131117', N'11310', N'2392  ', 12029845, 7917574, 9784697, 51.938522338867188, 22.945503234863281, 77582351, 70878797, 9.4577703475952148, N'-', CAST(N'2024-11-18T16:30:32.763' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'a320d682-056c-47ba-8f84-294a8f4de028', N'1131117', N'11310', N'4764  ', 250436, 270644, 168494, -7.4666352272033691, 48.631999969482422, 2193535, 1834986, 19.539604187011719, N'-', CAST(N'2024-11-18T16:30:33.343' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c3817f60-3823-49c1-847a-29ec7e42f025', N'1131117', N'11310', N'3716  ', 741200, 748876, 0, -1.0250028371810913, NULL, 1490076, 0, NULL, N'10月整體營收比去年同期增加2.42%', CAST(N'2024-11-18T16:30:33.300' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8daf76ed-ec63-435f-bbca-2a8419de080c', N'1131117', N'11310', N'3669  ', 178556, 215314, 193551, -17.071811676025391, -7.747312068939209, 2227012, 2106142, 5.738929271697998, N'-', CAST(N'2024-11-18T16:30:33.283' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b7ee7c4e-0d08-467f-819d-2a90cefe9ac1', N'1131117', N'11310', N'2358  ', 0, 0, 78381, NULL, -100, 135131, 846251, -84.031806945800781, N'亞鑫不列入合併營收', CAST(N'2024-11-18T16:30:32.700' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'5647c130-bab5-4daf-8256-2a92a0045c60', N'1131117', N'11310', N'6641  ', 120601, 188391, 176981, -35.983673095703125, -31.856527328491211, 1485843, 1385450, 7.2462377548217773, N'-', CAST(N'2024-11-18T16:30:33.933' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ec80714d-bbeb-4601-aa59-2aaaf25f55a4', N'1131117', N'11310', N'2809  ', 559800, 816141, 564717, -31.408910751342773, -0.87070161104202271, 7759218, 7979993, -2.766606330871582, N'-', CAST(N'2024-11-18T16:30:33.093' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'36cee1d5-971c-4595-af43-2ac8e20e0adf', N'1131117', N'11310', N'2483  ', 152836, 142513, 141354, 7.2435498237609863, 8.122868537902832, 1495893, 1508400, -0.82915669679641724, N'-', CAST(N'2024-11-18T16:30:32.910' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c512850b-a4f1-4644-8f88-2af62187197f', N'1131117', N'11310', N'6192  ', 763315, 596573, 540604, 27.949974060058594, 41.196697235107422, 6379565, 5507113, 15.842275619506836, N'-', CAST(N'2024-11-18T16:30:33.653' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'17006ca4-60cd-4678-8ec6-2b19288846cc', N'1131117', N'11310', N'8039  ', 744555, 872939, 767210, -14.707098960876465, -2.9529073238372803, 8452241, 6736335, 25.472396850585938, N'自結數尚未經會計師簽證，特此說明。', CAST(N'2024-11-18T16:30:34.083' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'44f62d42-153e-4ef6-9891-2b3b9ed8a522', N'1131117', N'11310', N'6257  ', 1680008, 1583058, 1351925, 6.1242227554321289, 24.267839431762695, 14978813, 12817857, 16.858949661254883, N'-', CAST(N'2024-11-18T16:30:33.760' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f9b9e444-8216-404c-8e9e-2b67c7eed68f', N'1131117', N'11310', N'6672  ', 344058, 334830, 365302, 2.7560255527496338, -5.8154621124267578, 3543120, 4005404, -11.541507720947266, N'-', CAST(N'2024-11-18T16:30:33.950' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7c812b44-41ba-4dfe-b3e6-2b99f4f170c0', N'1131117', N'11310', N'3416  ', 309587, 206362, 186157, 50.021320343017578, 66.304244995117188, 2533752, 2179725, 16.241819381713867, N'自113年度起新增合併子公司 TL Electronic GmbH及本月出貨增加', CAST(N'2024-11-18T16:30:33.243' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8ddaccb0-40d1-454a-8141-2ba119116fe4', N'1131117', N'11310', N'4119  ', 168385, 132340, 94097, 27.236663818359375, 78.948318481445312, 1290275, 1006840, 28.150947570800781, N'既有產品銷貨成長', CAST(N'2024-11-18T16:30:33.307' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f64949e1-59a8-4cb5-80ca-2c4ae3e655d4', N'1131117', N'11310', N'1531  ', 128399, 148094, 110562, -13.298985481262207, 16.133029937744141, 1369444, 1219728, 12.274539947509766, N'-', CAST(N'2024-11-18T16:30:32.107' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9d67d89a-9722-4c36-85ff-2c73a90a312a', N'1131117', N'11310', N'6243  ', 70699, 63616, 67229, 11.133991241455078, 5.1614632606506348, 612206, 747980, -18.152090072631836, N'-', CAST(N'2024-11-18T16:30:33.753' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'1a847490-66e5-4b9b-9e00-2d140f6e2eca', N'1131117', N'11310', N'3005  ', 3008903, 3099271, 3176427, -2.9157824516296387, -5.2739758491516113, 29504122, 28995410, 1.7544569969177246, N'-', CAST(N'2024-11-18T16:30:33.170' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'90d3385c-ceba-4932-aeb2-2db706d17f83', N'1131117', N'11310', N'2432  ', 173107, 292392, 146674, -40.796260833740234, 18.021598815917969, 2052247, 1636198, 25.427789688110352, N'-', CAST(N'2024-11-18T16:30:32.820' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9050c720-4763-4deb-bc89-2df420c3a299', N'1131117', N'11310', N'2645  ', 1369598, 1307973, 1320815, 4.7114887237548828, 3.6934013366699219, 13079483, 12362337, 5.8010554313659668, N'-', CAST(N'2024-11-18T16:30:33.057' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'66b330b8-9b55-4676-acf1-2e151b38c402', N'1131117', N'11310', N'2905  ', 19365075, 10777230, 12658497, 79.685089111328125, 52.980838775634766, 161405768, 162278201, -0.53761565685272217, N'主要係子公司人壽分離帳戶收益、覆蓋法損益及兌換利益較去年同期增加。', CAST(N'2024-11-18T16:30:33.153' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f73a4447-db16-480b-8eed-2e189145775b', N'1131117', N'11310', N'1474  ', 297605, 255691, 223492, 16.39244270324707, 33.1613655090332, 2592124, 2145772, 20.801464080810547, N'-', CAST(N'2024-11-18T16:30:32.020' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'5bd3fdc9-5432-4b91-b363-2e4d1cf2fa55', N'1131117', N'11310', N'1101  ', 16272067, 13325249, 9371746, 22.1145436, 73.62898013, 121863413, 90313749, 34.93340089, N'2024/3/6起併入OYAK及Cimpor，以致營收較去年同期增加。', CAST(N'2024-11-18T16:30:31.130' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'2b22a949-03dc-4ab1-9aad-2e7cc4fa4748', N'1131117', N'11310', N'6472  ', 2089357, 2023925, 1123658, 3.2329261302948, 85.942428588867188, 15588994, 12118525, 28.637718200683594, N'113.04起合併子公司USL營收及113.08.20收購Emergent BioSolutions旗下位於美國馬里蘭康登鎮無菌製劑廠營收納入合併', CAST(N'2024-11-18T16:30:33.873' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f7993c16-cdf6-447a-bb06-2ea44f0fdd49', N'1131117', N'11310', N'2227  ', 1781651, 1960731, 2488906, -9.1333284378051758, -28.416299819946289, 20557742, 22162707, -7.2417373657226562, N'-', CAST(N'2024-11-18T16:30:32.463' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'47641a68-045b-4236-8e8c-2eac2f4619c4', N'1131117', N'11310', N'6937  ', 119711, 145530, 89477, -17.741359710693359, 33.789688110351562, 1688673, 1427028, 18.334959030151367, N'無', CAST(N'2024-11-18T16:30:34.057' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8dda71cc-ea1a-4a81-9292-2f3580577b82', N'1131117', N'11310', N'2701  ', 18846, 19523, 23163, -3.4677047729492188, -18.637481689453125, 250738, 250672, 0.026329226791858673, N'-', CAST(N'2024-11-18T16:30:33.060' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'69843dca-10ba-4211-a36e-2fb77ddd06a6', N'1131117', N'11310', N'4746  ', 381063, 365234, 402586, 4.3339338302612305, -5.3461871147155762, 3760564, 3550715, 5.9100489616394043, N'-', CAST(N'2024-11-18T16:30:33.343' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ad5ab9ae-e541-4a98-afa0-3006a503f0fc', N'1131117', N'11310', N'1323  ', 189578, 189504, 283758, 0.039049308747053146, -33.190254211425781, 2316348, 2790179, -16.982099533081055, N'本月營收較去年同期減少主要係今年7月份精奕公司董事會暨營運團隊重組下，其已非本公司合併財務報告之子公司。', CAST(N'2024-11-18T16:30:31.713' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'2440606e-c966-497d-9892-30205b476a14', N'1131117', N'11310', N'3051  ', 174967, 175256, 181113, -0.16490162909030914, -3.3934614658355713, 1484458, 1710967, -13.238654136657715, N'-', CAST(N'2024-11-18T16:30:33.210' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'22c0022d-2659-426a-86d7-3034e4edcf25', N'1131117', N'11310', N'2459  ', 408914, 425481, 671291, -3.8937108516693115, -39.085433959960938, 4352991, 6205830, -29.856426239013672, N'-', CAST(N'2024-11-18T16:30:32.860' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9acd8014-411b-41c1-9786-3038c3a32557', N'1131117', N'11310', N'9930  ', 1112815, 1138300, 960987, -2.2388648986816406, 15.799173355102539, 10852473, 10278146, 5.5878462791442871, N'-', CAST(N'2024-11-18T16:30:34.193' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'890a9d1d-6dd0-4860-b5c1-304da67545c0', N'1131117', N'11310', N'2442  ', 17631, 15926, 13250, 10.705763816833496, 33.064151763916016, 613761, 1299731, -52.7778434753418, N'本年累計營收較去年同期減少，主係本期營建專案交屋認列收入減少所致。', CAST(N'2024-11-18T16:30:32.837' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'92278352-d890-4a28-9d4e-306479fc6aca', N'1131117', N'11310', N'8016  ', 1527520, 1589405, 1521809, -3.8935954570770264, 0.375277042388916, 14737162, 13733536, 7.3078484535217285, N'-', CAST(N'2024-11-18T16:30:34.073' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'55a159b8-c2b4-41f9-9062-3072adadeac1', N'1131117', N'11310', N'1308  ', 465783, 382991, 538938, 21.617218017578125, -13.573917388916016, 4944196, 5578499, -11.370495796203613, N'-', CAST(N'2024-11-18T16:30:31.550' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'40886bb2-4cce-44e8-b71d-307959e81bcb', N'1131117', N'11310', N'2420  ', 181158, 167314, 184981, 8.2742624282836914, -2.0666987895965576, 1882864, 1807664, 4.1600651741027832, N'-', CAST(N'2024-11-18T16:30:32.797' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd253bda2-4a49-4af9-ab2b-30db6c351fc3', N'1131117', N'11310', N'4739  ', 304470, 326116, 353653, -6.6375155448913574, -13.907135009765625, 3495561, 4504165, -22.392696380615234, N'-', CAST(N'2024-11-18T16:30:33.340' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8ec23139-5537-4b75-b890-30f7bab806ea', N'1131117', N'11310', N'2401  ', 511059, 547813, 462929, -6.709223747253418, 10.396842956542969, 5432057, 4620352, 17.568033218383789, N'-', CAST(N'2024-11-18T16:30:32.770' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'5e4ca24f-166b-4e46-b061-31000a4762ce', N'1131117', N'11310', N'912000', 129320, 135944, 147095, -4.8725948333740234, -12.084027290344238, 1332204, 1735919, -23.256557464599609, N'-', CAST(N'2024-11-18T16:30:34.167' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'40a356e0-98f5-4565-a8eb-3199bc7bc793', N'1131117', N'11310', N'2484  ', 190838, 203592, 184873, -6.2644896507263184, 3.2265393733978271, 1848226, 1971171, -6.2371554374694824, N'-', CAST(N'2024-11-18T16:30:32.913' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'0a980eb5-87c5-451b-a522-3203c7868692', N'1131117', N'11310', N'2354  ', 6571484, 5605568, 5396777, 17.231367111206055, 21.766824722290039, 49128277, 67800023, -27.539438247680664, N'-', CAST(N'2024-11-18T16:30:32.690' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c1c538e3-4a84-4bcc-b483-320d4065f032', N'1131117', N'11310', N'9919  ', 221125, 278317, 246014, -20.549230575561523, -10.116904258728027, 2398038, 2513545, -4.5953822135925293, N'-', CAST(N'2024-11-18T16:30:34.183' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'58d8c255-7cb8-4c9e-9ad1-32829fdd1d91', N'1131117', N'11310', N'6668  ', 73182, 91672, 57487, -20.169734954833984, 27.301824569702148, 760529, 726382, 4.70097017288208, N'-', CAST(N'2024-11-18T16:30:33.943' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'e48a34d2-d58a-4ef6-b1d6-329ef4c341ad', N'1131117', N'11310', N'2201  ', 6625460, 7066281, 7520441, -6.2383732795715332, -11.900645256042481, 71617791, 66555158, 7.6066727638244629, N'-', CAST(N'2024-11-18T16:30:32.447' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'663b03bb-e82e-42eb-a067-32ec0ac322df', N'1131117', N'11310', N'6141  ', 140751, 180225, 210885, -21.902622222900391, -33.256988525390625, 1997651, 2142709, -6.769841194152832, N'資料係自行結算數', CAST(N'2024-11-18T16:30:33.420' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'789d04a8-3e95-4cc1-911e-334dcff2566a', N'1131117', N'11310', N'6271  ', 994628, 978551, 1046398, 1.6429394483566284, -4.9474482536315918, 10102108, 9457431, 6.8166184425354, N'-', CAST(N'2024-11-18T16:30:33.767' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'5ca77175-e7fb-40ae-bdbf-335868ebfa9d', N'1131117', N'11310', N'3481  ', 16896406, 19121611, 17291188, -11.637121200561523, -2.2831399440765381, 179722313, 175627522, 2.3315200805664062, N'-', CAST(N'2024-11-18T16:30:33.253' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'dcc891ac-0301-495b-a0db-335b7322758b', N'1131117', N'11310', N'1108  ', 397720, 417664, 451146, -4.7751302719116211, -11.842286109924316, 3952710, 4141653, -4.562018871307373, N'-', CAST(N'2024-11-18T16:30:31.160' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'5196eb5f-3842-4752-8b28-335ceef70a76', N'1131117', N'11310', N'3518  ', 29847, 27063, 26660, 10.287107467651367, 11.954238891601563, 310910, 319924, -2.8175442218780518, N'-', CAST(N'2024-11-18T16:30:33.257' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'308f2eda-758b-4ad3-b3ad-338ab005aebe', N'1131117', N'11310', N'2883  ', 4459714, 10037434, 3413694, -55.569183349609375, 30.641880035400391, 56877043, 41554999, 36.871723175048828, N'-', CAST(N'2024-11-18T16:30:33.127' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd0b2806a-7585-4fc9-bd8f-3432050aed56', N'1131117', N'11310', N'4989  ', 180209, 231769, 250809, -22.246288299560547, -28.148910522460938, 2598768, 2968294, -12.449103355407715, N'-', CAST(N'2024-11-18T16:30:33.370' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'51d9e2d5-5903-42e3-aa0b-3433a74d1543', N'1131117', N'11310', N'5388  ', 3672723, 4217710, 4972105, -12.921395301818848, -26.133438110351562, 47036961, 51922952, -9.4100790023803711, N'-', CAST(N'2024-11-18T16:30:33.383' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f8818a1d-bdb6-4cf0-9b2a-349af8f05f00', N'1131117', N'11310', N'6573  ', 65465, 62634, 88577, 4.5199093818664551, -26.092552185058594, 795175, 1005016, -20.879369735717773, N'-', CAST(N'2024-11-18T16:30:33.910' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c5f1ea6e-e2a7-42a2-bb72-349ee150fffe', N'1131117', N'11310', N'3645  ', 180330, 192529, 108840, -6.3361883163452148, 65.6835708618164, 1854109, 1348608, 37.483169555664062, N'因去年受景氣不確定性影響，營收基期較低，致使今年營收百分比較去年同期增加。', CAST(N'2024-11-18T16:30:33.280' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9870ac87-52eb-46e1-b7e9-34def2fff157', N'1131117', N'11310', N'2528  ', 55, 22939, 21, -99.7602310180664, 161.90475463867188, 24547, 1849936, -98.673088073730469, N'主係認列租賃收入55仟元所致。', CAST(N'2024-11-18T16:30:32.967' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c49f9e2b-d27b-4cda-bba1-34fc6426ac37', N'1131117', N'11310', N'2015  ', 2547550, 2645006, 3175793, -3.6845285892486572, -19.78223991394043, 28240816, 28982129, -2.5578279495239258, N'-', CAST(N'2024-11-18T16:30:32.370' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'61802777-fa37-4e6f-918d-357369eadcb6', N'1131117', N'11310', N'3209  ', 4503722, 3031863, 6515902, 48.546356201171875, -30.881065368652344, 40337329, 49593989, -18.664882659912109, N'去年基期較高，今年10月營收仍較上月(9月)成長48.55%。', CAST(N'2024-11-18T16:30:33.227' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'791976f5-6afc-44c0-b245-35780c82ecb5', N'1131117', N'11310', N'2002  ', 27939847, 26747619, 29052184, 4.4573240280151367, -3.8287551403045654, 301881714, 303984434, -0.691719651222229, N'-', CAST(N'2024-11-18T16:30:32.353' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ee801914-157e-4e5d-b397-35e9dfa5c53b', N'1131117', N'11310', N'2706  ', 28837, 28903, 29216, -0.22834999859333038, -1.2972344160079956, 294320, 283304, 3.8884024620056152, N'-', CAST(N'2024-11-18T16:30:33.070' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'db48a611-300e-4c02-aea7-362fe0d6d338', N'1131117', N'11310', N'6426  ', 29089, 25731, 52826, 13.050406455993652, -44.934310913085938, 261783, 293825, -10.905130386352539, N'-', CAST(N'2024-11-18T16:30:33.837' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7b071fd5-ab4a-4417-b0b2-36957fd18f3c', N'1131117', N'11310', N'9908  ', 256862, 234086, 287069, 9.7297573089599609, -10.522557258605957, 2729571, 2777054, -1.7098335027694702, N'-', CAST(N'2024-11-18T16:30:34.173' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd343a112-ee00-42ed-b94b-36d059ebda1c', N'1131117', N'11310', N'4551  ', 678697, 729219, 574448, -6.9282341003417969, 18.147682189941406, 6386102, 6078943, 5.0528354644775391, N'-', CAST(N'2024-11-18T16:30:33.320' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'a2e5127e-1868-497a-b8f4-3706417adb3c', N'1131117', N'11310', N'6285  ', 9160937, 8372199, 9817624, 9.4209175109863281, -6.6888585090637207, 91425159, 90920811, 0.55471128225326538, N'-', CAST(N'2024-11-18T16:30:33.793' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'96ea8b47-cd4d-4e69-aee9-3713cde6a3af', N'1131117', N'11310', N'3046  ', 405851, 564454, 388467, -28.098480224609375, 4.4750261306762695, 6178238, 4774547, 29.399459838867188, N'-', CAST(N'2024-11-18T16:30:33.203' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'aaac4c9a-6c4b-4357-93c6-372400c37b61', N'1131117', N'11310', N'2362  ', 2759611, 2448247, 2485115, 12.71783447265625, 11.045605659484863, 22001294, 20113692, 9.3846616744995117, N'-', CAST(N'2024-11-18T16:30:32.710' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'cca53d6a-e23a-4fdf-99bc-372e40e91e43', N'1131117', N'11310', N'2474  ', 1373292, 1463194, 1093398, -6.1442298889160156, 25.598546981811523, 14821423, 15860182, -6.5494771003723145, N'-', CAST(N'2024-11-18T16:30:32.890' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'0b825972-689c-4c37-a898-375e6ecdff88', N'1131117', N'11310', N'5521  ', 678823, 755194, 563985, -10.112765312194824, 20.361888885498047, 5816410, 4425368, 31.43336296081543, N'無', CAST(N'2024-11-18T16:30:33.390' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f035fbce-e1cb-4ee6-8cd9-377f2fb1031c', N'1131117', N'11310', N'2605  ', 307788, 346996, 369238, -11.299265861511231, -16.64238166809082, 3828574, 3522624, 8.6852865219116211, N'-', CAST(N'2024-11-18T16:30:33.020' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'86fa34b8-6cb9-4dab-a7bc-37ab29910f67', N'1131117', N'11310', N'1307  ', 855832, 923027, 837011, -7.2798519134521484, 2.2485964298248291, 9068577, 8508620, 6.5810556411743164, N'-', CAST(N'2024-11-18T16:30:31.547' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd7b08750-23cf-4851-8f5c-37c57aed889f', N'1131117', N'11310', N'1110  ', 249922, 289245, 191120, -13.595048904418945, 30.767057418823242, 2322081, 1832642, 26.706743240356445, N'-', CAST(N'2024-11-18T16:30:31.170' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'1e782c2a-33d3-4359-a861-37e0a7aa6b55', N'1131117', N'11310', N'2882  ', 20339672, 19530721, 26127781, 4.1419410705566406, -22.153083801269531, 308342864, 268568639, 14.80970573425293, N'-', CAST(N'2024-11-18T16:30:33.127' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd5a2cf6b-0b35-4687-808a-3821c13530ba', N'1131117', N'11310', N'4968  ', 300033, 308708, 270486, -2.8100988864898682, 10.923670768737793, 3081570, 2383795, 29.271602630615234, N'-', CAST(N'2024-11-18T16:30:33.367' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'41b0fb6b-a760-4ff2-ac8a-38d5d126aacc', N'1131117', N'11310', N'2371  ', 3531068, 3925579, 3499524, -10.049753189086914, 0.90137970447540283, 39143093, 39309568, -0.42349740862846375, N'-', CAST(N'2024-11-18T16:30:32.730' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'06a920d1-db4b-408e-92bb-3a07f60e8856', N'1131117', N'11310', N'2892  ', 5299215, 5578878, 4745083, -5.0128898620605469, 11.678025245666504, 60661753, 56463504, 7.43533182144165, N'-', CAST(N'2024-11-18T16:30:33.143' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'53e81217-7c89-404f-8fa4-3a6900e63c8e', N'1131117', N'11310', N'2302  ', 66820, 68296, 50480, -2.1611807346343994, 32.369255065917969, 618893, 623528, -0.74335074424743652, N'-', CAST(N'2024-11-18T16:30:32.527' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ba544117-eb49-4b77-addf-3ab37a7603a6', N'1131117', N'11310', N'3057  ', 34649, 55605, 51101, -37.687259674072266, -32.195064544677734, 454018, 484538, -6.2987837791442871, N'-', CAST(N'2024-11-18T16:30:33.217' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'93909113-ab2e-48b2-86c3-3b0c5bfe3b68', N'1131117', N'11310', N'2705  ', 217972, 168201, 218942, 29.590192794799805, -0.44303971529006958, 1840685, 1772038, 3.8739011287689209, N'-', CAST(N'2024-11-18T16:30:33.067' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'fa2609e1-415e-4c04-aa4c-3b5e0d746d69', N'1131117', N'11310', N'4583  ', 246659, 223820, 240051, 10.204181671142578, 2.7527484893798828, 2473999, 2244624, 10.218860626220703, N'-', CAST(N'2024-11-18T16:30:33.333' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3a4ddda1-b2cc-4609-9709-3b938e73161e', N'1131117', N'11310', N'9945  ', 2308543, 2940962, 3063088, -21.503814697265625, -24.633474349975586, 25280055, 21709753, 16.445613861083984, N'-', CAST(N'2024-11-18T16:30:34.203' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3ee1954b-90c4-45dd-abfa-3c0c8b73043c', N'1131117', N'11310', N'1455  ', 702297, 715945, 759281, -1.9062917232513428, -7.5049948692321777, 8020403, 6222633, 28.890825271606445, N'-', CAST(N'2024-11-18T16:30:31.963' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3497a2d0-44f4-4e0f-a91d-3c35de959fec', N'1131117', N'11310', N'3044  ', 5604038, 5859996, 5044757, -4.367887020111084, 11.086380958557129, 54362894, 48955451, 11.045639991760254, N'-', CAST(N'2024-11-18T16:30:33.203' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'5638f4fd-d19f-41c3-a6ef-3c49cae135e9', N'1131117', N'11310', N'3679  ', 407794, 376811, 337785, 8.2224245071411133, 20.725906372070312, 3425517, 2833772, 20.881885528564453, N'-', CAST(N'2024-11-18T16:30:33.283' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'0eb05660-3ca5-4b5c-8f23-3c87188e0946', N'1131117', N'11310', N'1215  ', 2457728, 2273593, 2382360, 8.0988550186157227, 3.1635856628417969, 23088790, 24332804, -5.1124973297119141, N'-', CAST(N'2024-11-18T16:30:31.240' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'005f8570-8edf-436e-bea3-3d664f28745f', N'1131117', N'11310', N'1235  ', 14331, 13412, 3323, 6.8520727157592773, 331.26693725585938, 87937, 42837, 105.28281402587891, N'增加子公司泰宇網通營收1198.2萬', CAST(N'2024-11-18T16:30:31.430' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'822ac13a-d389-4eb1-93da-3da9f09ad30c', N'1131117', N'11310', N'3164  ', 23510, 25123, 28389, -6.4204115867614746, -17.186233520507812, 317932, 270576, 17.501922607421875, N'-', CAST(N'2024-11-18T16:30:33.223' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'53b67be6-20a1-4ebd-a776-3dcf297ba029', N'1131117', N'11310', N'1786  ', 80576, 60324, 60029, 33.572044372558594, 34.22845458984375, 708689, 569770, 24.381591796875, N'-', CAST(N'2024-11-18T16:30:32.310' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'bf9f7b3c-3fe8-4110-af8d-3dfddf6bf00f', N'1131117', N'11310', N'6416  ', 311004, 432664, 321757, -28.118818283081055, -3.3419630527496338, 3394809, 3330293, 1.9372469186782837, N'-', CAST(N'2024-11-18T16:30:33.827' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3dab7568-b2bf-4791-a28d-3e19cf84478d', N'1131117', N'11310', N'6592  ', 2108766, 2124058, 2496405, -0.71994268894195557, -15.527889251708984, 24757186, 23484571, 5.4189410209655762, N'113/8/21出售子公司和雲行動股權予和運租車。', CAST(N'2024-11-18T16:30:33.920' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c8604dfc-f508-4b23-98ab-3e645420ccd2', N'1131117', N'11310', N'8367  ', 215146, 254853, 197375, -15.580353736877441, 9.0036735534667969, 2344397, 1815622, 29.123628616333008, N'無', CAST(N'2024-11-18T16:30:34.130' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'cee148db-f43a-41d2-9406-3e784600cce3', N'1131117', N'11310', N'2102  ', 30625, 32753, 11582, -6.4971146583557129, 164.41893005371094, 218939, 445090, -50.810173034667969, N'自美國反傾銷案及停產後,衝擊本公司營收,但本公司仍致力於拓展全球其它區域的銷售。', CAST(N'2024-11-18T16:30:32.423' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'594e8162-d7b0-4c80-8a59-3e805e3f2f56', N'1131117', N'11310', N'4770  ', 546920, 610962, 418569, -10.482157707214356, 30.664239883422852, 5387197, 4822466, 11.710419654846191, N'-', CAST(N'2024-11-18T16:30:33.343' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'89c5e4db-baa4-436b-ab17-3ef32bf06a0e', N'1131117', N'11310', N'2393  ', 1725944, 1753651, 1477948, -1.5799609422683716, 16.779750823974609, 17745265, 14865073, 19.375566482543945, N'-', CAST(N'2024-11-18T16:30:32.767' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8d537ceb-3672-4047-9016-3f080c88b111', N'1131117', N'11310', N'4545  ', 186598, 210677, 134905, -11.429344177246094, 38.318077087402344, 2018634, 1776373, 13.637957572937012, N'-', CAST(N'2024-11-18T16:30:33.320' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'2f9fcc35-3411-4187-9068-3f6f95a27e4a', N'1131117', N'11310', N'2455  ', 236267, 269294, 316680, -12.264290809631348, -25.392509460449219, 2755010, 2073846, 32.8454475402832, N'-', CAST(N'2024-11-18T16:30:32.850' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ab862bf6-056e-4ead-af28-3fcfdb48b5d3', N'1131117', N'11310', N'2492  ', 2772231, 3182121, 2725831, -12.881031036376953, 1.7022331953048706, 29178108, 27447963, 6.3033638000488281, N'-', CAST(N'2024-11-18T16:30:32.923' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'868fd4e5-b299-40d1-b8e4-3fe1767161f2', N'1131117', N'11310', N'2405  ', 140345, 126171, 127979, 11.233960151672363, 9.6625223159790039, 1408230, 1403270, 0.35346013307571411, N'-', CAST(N'2024-11-18T16:30:32.777' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'20fd7b4b-40d9-4c7a-988b-405e66c2a6df', N'1131117', N'11310', N'4930  ', 606596, 862377, 667877, -29.659997940063477, -9.1754922866821289, 6782311, 5771191, 17.520126342773438, N'-', CAST(N'2024-11-18T16:30:33.353' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'1c8a22f3-100e-404d-997a-4067ae6017bb', N'1131117', N'11310', N'6796  ', 48533, 34060, 46182, 42.492660522460938, 5.0907278060913086, 372302, 433223, -14.062273025512695, N'-', CAST(N'2024-11-18T16:30:34.003' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'eb856d4b-7f44-480c-9ae8-406fba8167ea', N'1131117', N'11310', N'1324  ', 69989, 59058, 90322, 18.508922576904297, -22.511680603027344, 657234, 788562, -16.654111862182617, N'-', CAST(N'2024-11-18T16:30:31.717' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'aa0d3aaa-62e9-4862-b568-407b4dfa4f94', N'1131117', N'11310', N'1305  ', 827346, 921273, 1046806, -10.19534969329834, -20.964725494384766, 9370019, 11532707, -18.752649307250977, N'-', CAST(N'2024-11-18T16:30:31.540' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9c72a4ee-a77f-458b-96da-40af3506bc5a', N'1131117', N'11310', N'2109  ', 462318, 329846, 396864, 40.161773681640625, 16.4928035736084, 4020234, 3842927, 4.6138529777526855, N'-', CAST(N'2024-11-18T16:30:32.440' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'a61ab972-4be1-46d0-bcdc-40f0f6598fc6', N'1131117', N'11310', N'8081  ', 682469, 725827, 671817, -5.973599910736084, 1.5855507850646973, 6958427, 6774608, 2.7133526802062988, N'-', CAST(N'2024-11-18T16:30:34.090' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'46424f6d-25b2-466a-b5bf-410449834d73', N'1131117', N'11310', N'2324  ', 85452293, 83765925, 87494016, 2.0131909847259521, -2.3335573673248291, 766549921, 792537644, -3.2790522575378418, N'無', CAST(N'2024-11-18T16:30:32.600' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f1d38c21-fd1b-4a40-9363-415159272274', N'1131117', N'11310', N'5519  ', 481662, 116115, 470162, 314.81463623046875, 2.4459655284881592, 4119290, 2202589, 87.0203628540039, N'本年累計增加主要係出售J37案桃園市大園區客運一段54地號於本年完成程序認列土地收入較多所致。', CAST(N'2024-11-18T16:30:33.390' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'53ffbbbb-aa02-462e-9221-41716a92ff4f', N'1131117', N'11310', N'9914  ', 1995779, 2556013, 1524575, -21.918275833129883, 30.907236099243164, 25870942, 24054553, 7.55112361907959, N'-', CAST(N'2024-11-18T16:30:34.180' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'454f4eb9-2cfe-42dd-b1a4-417cd111fa01', N'1131117', N'11310', N'3040  ', 11649, 13180, 13127, -11.616085052490234, -11.259236335754395, 111192, 129506, -14.141429901123047, N'-', CAST(N'2024-11-18T16:30:33.200' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'65a59f78-220f-4f88-9e6e-418f79e779b1', N'1131117', N'11310', N'6423  ', 33235, 2550, 24369, 1203.3333740234375, 36.382289886474609, 208808, 169101, 23.481233596801758, N'-', CAST(N'2024-11-18T16:30:33.833' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'afd04d61-9212-44c7-852c-41d22f2df40a', N'1131117', N'11310', N'3055  ', 21191, 82493, 75654, -74.311759948730469, -71.989585876464844, 631333, 1110290, -43.138008117675781, N'本期營收減少，主係出售驗證業務及終止部份代理所致。', CAST(N'2024-11-18T16:30:33.213' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8631ad93-5fd5-460f-a544-41e54acf556e', N'1131117', N'11310', N'3494  ', 87121, 93082, 59325, -6.4040307998657227, 46.8537712097168, 783154, 575407, 36.1043586730957, N'-', CAST(N'2024-11-18T16:30:33.257' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b8ad5c0c-647f-43da-a715-41eeca809bb4', N'1131117', N'11310', N'2375  ', 409006, 473833, 374251, -13.681402206420898, 9.2865486145019531, 4406236, 4009130, 9.9050416946411133, N'-', CAST(N'2024-11-18T16:30:32.740' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'582d238c-5ba3-4a0c-a4f4-420d9e0d3e4f', N'1131117', N'11310', N'1470  ', 72495, 67423, 44711, 7.5226554870605469, 62.141307830810547, 645951, 571733, 12.981234550476074, N'品牌需求增加,訂單回流', CAST(N'2024-11-18T16:30:32.007' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b97e4605-d7b7-4c78-ac45-42289440faa4', N'1131117', N'11310', N'2850  ', 1752373, 1759652, 1660596, -0.41366133093833923, 5.5267505645751953, 17394232, 16691454, 4.2104063034057617, N'-', CAST(N'2024-11-18T16:30:33.110' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9e7c730f-65d7-4206-b2b0-423bd6c4fb70', N'1131117', N'11310', N'6541  ', 986, 2113, 707, -53.33648681640625, 39.462516784667969, 32854, 53031, -38.047557830810547, N'收入來源包括產品銷售及受託研發收入', CAST(N'2024-11-18T16:30:33.900' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'53a39922-e7b0-415c-ba5f-425d2db88775', N'1131117', N'11310', N'6155  ', 48666, 55793, 48054, -12.774003982543945, 1.2735671997070313, 473706, 461978, 2.5386490821838379, N'-', CAST(N'2024-11-18T16:30:33.440' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'e04d9790-b03d-4fe5-b11a-4293ad432b49', N'1131117', N'11310', N'6225  ', 3754, 6138, 3675, -38.840011596679688, 2.1496598720550537, 43536, 33733, 29.060564041137695, N'-', CAST(N'2024-11-18T16:30:33.723' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'2ade2d9a-b440-4b59-8ffb-42d53707bada', N'1131117', N'11310', N'8033  ', 102821, 104139, 77380, -1.2656161785125732, 32.878005981445312, 1023078, 816290, 25.332664489746094, N'-', CAST(N'2024-11-18T16:30:34.080' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c8b15786-deda-4b48-a6fc-432cb48b6a30', N'1131117', N'11310', N'6176  ', 4643014, 4677603, 4050031, -0.73945993185043335, 14.641443252563477, 41580763, 36502737, 13.911356925964356, N'-', CAST(N'2024-11-18T16:30:33.547' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9700b9fa-7725-4365-b9a2-435a4fbf2d07', N'1131117', N'11310', N'6873  ', 948785, 764328, 216810, 24.13322639465332, 337.61126708984375, 6949733, 3237512, 114.66277313232422, N'本月及本年營收較去年同期營收增加，主要係因承接工程案件依進度認列收入所致', CAST(N'2024-11-18T16:30:34.033' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'a594170d-539f-4e19-8f7d-438dddbead90', N'1131117', N'11310', N'2543  ', 1013752, 1016528, 1124276, -0.27308642864227295, -9.8306818008422852, 10239318, 8975518, 14.080524444580078, N'-', CAST(N'2024-11-18T16:30:32.997' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8851c1a2-d896-4973-a840-43adb33498ae', N'1131117', N'11310', N'1464  ', 1192279, 1166847, 857638, 2.1795487403869629, 39.0189094543457, 9707401, 8086563, 20.043596267700195, N'-', CAST(N'2024-11-18T16:30:31.990' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7d82e218-6a9b-4608-9f94-442fd682c568', N'1131117', N'11310', N'1229  ', 832906, 916900, 1200893, -9.1606502532958984, -30.642780303955078, 10606944, 10487622, 1.1377412080764771, N'-', CAST(N'2024-11-18T16:30:31.353' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'100edf9e-0e5e-410d-b382-444724ebae87', N'1131117', N'11310', N'1519  ', 1968763, 1765912, 1345186, 11.487038612365723, 46.3561897277832, 15008983, 9632917, 55.809326171875, N'本年累計金額較同期增加，主要為外銷及民營案訂單成長。', CAST(N'2024-11-18T16:30:32.083' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd38a76a2-b87b-4eee-a7be-44c63be6596f', N'1131117', N'11310', N'1702  ', 1981587, 2098827, 1808824, -5.5859770774841309, 9.5511226654052734, 19417954, 18608214, 4.3515191078186035, N'-', CAST(N'2024-11-18T16:30:32.203' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'31680761-abd1-4cd3-9d1d-44f1f84b98eb', N'1131117', N'11310', N'2481  ', 942180, 1109296, 1004949, -15.06505012512207, -6.2459883689880371, 10466926, 10681897, -2.0124795436859131, N'本月營收淨額含功率元件及其他IC產品$938,737仟元及太陽能$18,965仟元，減銷退/折$15,522仟元', CAST(N'2024-11-18T16:30:32.907' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ba0b17d2-7fb2-45e7-bc16-450090a7e15b', N'1131117', N'11310', N'1537  ', 738980, 706926, 636835, 4.5342793464660645, 16.03947639465332, 6798350, 5300157, 28.26695442199707, N'-', CAST(N'2024-11-18T16:30:32.123' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'0e33910f-e197-42eb-8a4f-450542abd2c0', N'1131117', N'11310', N'1530  ', 137189, 152402, 129164, -9.9821529388427734, 6.21303129196167, 1528427, 1987823, -23.110507965087891, N'-', CAST(N'2024-11-18T16:30:32.107' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'772898b9-d54f-42ca-94ed-456461c7756b', N'1131117', N'11310', N'1338  ', 440365, 451843, 467678, -2.5402629375457764, -5.8401293754577637, 4120616, 4660222, -11.578976631164551, N'-', CAST(N'2024-11-18T16:30:31.733' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'2dee42bd-0281-4578-8175-4595085dc14e', N'1131117', N'11310', N'6830  ', 160730, 166502, 143023, -3.4666249752044678, 12.380526542663574, 1623384, 1554497, 4.4314656257629395, N'-', CAST(N'2024-11-18T16:30:34.013' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b19b02f9-4944-42b9-a50e-459f0c0732fb', N'1131117', N'11310', N'2443  ', 862, 879, 672, -1.9340158700942993, 28.2738094329834, 16907, 8525, 98.322578430175781, N'因公司業務整理中，目前正逐步導入新事業，營業收入因而產生差異。', CAST(N'2024-11-18T16:30:32.840' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9ef68cf7-f67e-442f-ad8d-461b0e3d339a', N'1131117', N'11310', N'1232  ', 1858530, 1742432, 1922344, 6.6629858016967773, -3.3195931911468506, 18234878, 19630101, -7.1075692176818848, N'-', CAST(N'2024-11-18T16:30:31.387' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f2dae236-4cc1-400c-9e99-46221301bd2c', N'1131117', N'11310', N'2431  ', 41408, 41369, 53234, 0.094273492693901062, -22.215126037597656, 340945, 512796, -33.512546539306641, N'-', CAST(N'2024-11-18T16:30:32.820' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'231791b1-364a-4aa8-bbe2-469a998a3d42', N'1131117', N'11310', N'6197  ', 554730, 591695, 488797, -6.2473063468933105, 13.48883056640625, 5667932, 3968712, 42.815402984619141, N'-', CAST(N'2024-11-18T16:30:33.660' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'1b5aa7e9-d2eb-4017-9220-46c4589f5e7c', N'1131117', N'11310', N'6269  ', 1833455, 1975551, 3369471, -7.1927275657653809, -45.586265563964844, 22603370, 27600748, -18.1059513092041, N'-', CAST(N'2024-11-18T16:30:33.763' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'17366641-fdd2-4b5d-8749-47c72598570b', N'1131117', N'11310', N'9929  ', 47691, 51454, 68445, -7.3133282661437988, -30.32215690612793, 539185, 561419, -3.9603219032287598, N'-', CAST(N'2024-11-18T16:30:34.190' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'6a444ddb-06be-4b62-aab0-47caf75de87c', N'1131117', N'11310', N'9933  ', 8312447, 9078340, 9783758, -8.4364871978759766, -15.038301467895508, 96739116, 83441005, 15.937141418457031, N'-', CAST(N'2024-11-18T16:30:34.193' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'5aaa2c6e-3103-44ec-ae29-480ee10ee7df', N'1131117', N'11310', N'2438  ', 37087, 34018, 7536, 9.02169418334961, 392.131103515625, 290176, 105255, 175.68856811523438, N'本期營業收入較去年同期明顯成長主要係因新增合併孫公司嵩達光電之營收', CAST(N'2024-11-18T16:30:32.830' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'528faf62-9669-4bac-a27f-48d35b5610a7', N'1131117', N'11310', N'1736  ', 4530665, 4688781, 3397537, -3.3722198009490967, 33.351455688476562, 34939710, 28745122, 21.550048828125, N'-', CAST(N'2024-11-18T16:30:32.290' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'e5030e7d-57b7-469b-bcd9-48e14297e2ca', N'1131117', N'11310', N'1604  ', 696352, 654600, 676472, 6.3782463073730469, 2.9387764930725098, 7875111, 7590762, 3.7459876537323, N'-', CAST(N'2024-11-18T16:30:32.173' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'92c47c92-b781-4fd6-b626-48ebbeb3561e', N'1131117', N'11310', N'2033  ', 42652, 42216, 42203, 1.0327837467193604, 1.0639053583145142, 464181, 477693, -2.8285949230194092, N'-', CAST(N'2024-11-18T16:30:32.400' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'e5dde871-2174-4bc5-9abb-48f57f28be3a', N'1131117', N'11310', N'3018  ', 72771, 161733, 36025, -55.005470275878906, 102.00138854980469, 698642, 478345, 46.053997039794922, N'新工案已陸續施作，故113年10月收入高於112年10月', CAST(N'2024-11-18T16:30:33.177' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'98b789b2-ddf1-44f7-9fb9-4974ca2ce716', N'1131117', N'11310', N'3045  ', 15929971, 15913075, 14817542, 0.10617683827877045, 7.5075135231018066, 159152015, 144566251, 10.089328765869141, N'-', CAST(N'2024-11-18T16:30:33.203' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ddee3f07-e153-40fc-898a-49a49fbb5268', N'1131117', N'11310', N'6919  ', 0, 11116, 5058, -100, -100, 35071, 29084, 20.585201263427734, N'本月健康食品銷售較去年同期減少。', CAST(N'2024-11-18T16:30:34.050' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8afb4e46-b4ff-47c1-833a-49b39db2ca7f', N'1131117', N'11310', N'2477  ', 223569, 311785, 203339, -28.293855667114258, 9.94890308380127, 2231460, 1954873, 14.148591995239258, N'-', CAST(N'2024-11-18T16:30:32.897' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'39bd5dde-b3fa-4871-b942-49b8e0cecd26', N'1131117', N'11310', N'1410  ', 18282, 20499, 18540, -10.81516170501709, -1.3915857076644898, 193498, 184553, 4.8468461036682129, N'-', CAST(N'2024-11-18T16:30:31.763' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ebfb57da-860c-4e58-96a5-49c9b535a13c', N'1131117', N'11310', N'3033  ', 7342662, 9146303, 5400290, -19.719890594482422, 35.967918395996094, 72334295, 58100412, 24.498764038085938, N'-', CAST(N'2024-11-18T16:30:33.190' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'34e7bbfe-ffe9-4ab2-888a-4a232be335d0', N'1131117', N'11310', N'6598  ', 43153, 18562, 15045, 132.48033142089844, 186.82618713378906, 301215, 282558, 6.60289192199707, N'營收截至2024年10月止較去年累計上升主係數位生物條碼及腸胃道適應症多元檢測套組銷售增加所致。', CAST(N'2024-11-18T16:30:33.927' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'1609e547-3ced-4181-ac55-4a415606796b', N'1131117', N'11310', N'3029  ', 1695041, 1794847, 1186081, -5.5606966018676758, 42.911064147949219, 14980967, 11869567, 26.2132568359375, N'-', CAST(N'2024-11-18T16:30:33.187' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'53c98370-a464-424d-8578-4a5ec49146c4', N'1131117', N'11310', N'1447  ', 4065890, 1892762, 2627957, 114.81253051757813, 54.716762542724609, 29598969, 25171281, 17.590236663818359, N'因廠商一次性大量交貨，本公司於本月同步銷售予客戶，以及船期影響，致使同期營收增幅較大。', CAST(N'2024-11-18T16:30:31.940' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'1fba29f5-ed65-4017-a992-4aa3cca095f9', N'1131117', N'11310', N'9802  ', 1280003, 941813, 1170841, 35.908401489257812, 9.3233833312988281, 11503304, 14383481, -20.024200439453125, N'-', CAST(N'2024-11-18T16:30:34.167' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'08a4b053-1de2-4293-b3dd-4aed2629c2c2', N'1131117', N'11310', N'1707  ', 879106, 1232496, 821431, -28.672710418701172, 7.0212836265563965, 8884130, 8256477, 7.6019468307495117, N'-', CAST(N'2024-11-18T16:30:32.210' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'4cc27bef-2b4c-4a86-8eb5-4b065c2500b2', N'1131117', N'11310', N'2913  ', 41188, 39871, 30320, 3.3031525611877441, 35.844326019287109, 350163, 320082, 9.3979043960571289, N'-', CAST(N'2024-11-18T16:30:33.160' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'14f61483-70d4-4330-ac5f-4b3660574cde', N'1131117', N'11310', N'2520  ', 2941112, 2342031, 1926035, 25.579549789428711, 52.702938079833984, 25101708, 15829581, 58.574684143066406, N'營業收入113年10月份及113年1-10月累計數分別較去年同期增加50%以上，主因係建設部門本期有101A建案交屋入帳所致。', CAST(N'2024-11-18T16:30:32.953' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'41e8d94d-1622-43a8-8362-4b99e59e0d95', N'1131117', N'11310', N'2444  ', 158067, 113839, 193855, 38.851360321044922, -18.461221694946289, 1155607, 1530409, -24.490316390991211, N'-', CAST(N'2024-11-18T16:30:32.840' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'60d4002d-e7d1-49d5-ba93-4bef4855f313', N'1131117', N'11310', N'2025  ', 94997, 53793, 159935, 76.597328186035156, -40.602745056152344, 784491, 602387, 30.230400085449219, N'-', CAST(N'2024-11-18T16:30:32.390' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'43f6556b-0295-40f0-a91b-4c12f602056b', N'1131117', N'11310', N'2748  ', 189157, 187066, 212038, 1.1177873611450195, -10.790989875793457, 1944763, 1851965, 5.0107860565185547, N'-', CAST(N'2024-11-18T16:30:33.087' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f19fca53-d4a0-421f-9a73-4c22f919db78', N'1131117', N'11310', N'2530  ', 198587, 402117, 732, -50.614620208740234, 27029.37109375, 4756714, 10094, 47024.171875, N'本年度出售房地收入較去年度增加4,747,924仟元,本年度租金收入較去年度同期減少1,304仟元.', CAST(N'2024-11-18T16:30:32.970' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'bb213259-2c1a-4da6-b23a-4c3c32379e34', N'1131117', N'11310', N'2428  ', 613409, 665600, 555327, -7.8411960601806641, 10.459062576293945, 6100979, 5854075, 4.2176432609558105, N'-', CAST(N'2024-11-18T16:30:32.813' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'a0cf30ff-1912-4839-b080-4c75fe942827', N'1131117', N'11310', N'4737  ', 177974, 162080, 176451, 9.8062686920166016, 0.8631291389465332, 1609504, 1442361, 11.588152885437012, N'-', CAST(N'2024-11-18T16:30:33.340' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c647a025-734d-4aa5-b3b6-4c88d030ae0b', N'1131117', N'11310', N'5525  ', 1383759, 194254, 81858, 612.34515380859375, 1590.4383544921875, 4114782, 4887391, -15.808209419250488, N'本月份主要營收為子公司建高-風聆樹成屋收入', CAST(N'2024-11-18T16:30:33.393' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'47bfe32a-2624-4138-babf-4c9d009229cd', N'1131117', N'11310', N'8374  ', 411223, 347776, 228477, 18.24363899230957, 79.984420776367188, 2875993, 2604139, 10.439304351806641, N'歐洲綠能產品銷售進入旺季，台灣自動化市場需求回溫及併入怡進營收，故本月營收較去年變動達79.98%', CAST(N'2024-11-18T16:30:34.130' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'89c4c23d-e28f-433a-a429-4ce12a87f8a4', N'1131117', N'11310', N'6906  ', 47080, 51566, 50776, -8.6995306015014648, -7.279029369354248, 294931, 285014, 3.479478120803833, N'-', CAST(N'2024-11-18T16:30:34.043' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'6439d39e-9ae8-443f-9528-4d0112336061', N'1131117', N'11310', N'2419  ', 832124, 779723, 365149, 6.720463752746582, 127.88615417480469, 7340960, 7560581, -2.9048163890838623, N'配合客戶需求出貨量增加', CAST(N'2024-11-18T16:30:32.790' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ea171168-cc9a-4d37-9f01-4d040816a075', N'1131117', N'11310', N'1615  ', 499356, 481466, 429707, 3.7157349586486816, 16.208486557006836, 4903881, 3930370, 24.768939971923828, N'-', CAST(N'2024-11-18T16:30:32.190' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c97307e3-a0d2-4f12-9ac4-4d08d9c03425', N'1131117', N'11310', N'3704  ', 1983878, 2238479, 2278083, -11.373839378356934, -12.914586067199707, 20452731, 25229207, -18.932327270507812, N'-', CAST(N'2024-11-18T16:30:33.287' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7a587bd6-d5e5-486d-b45a-4d45ca4d43c0', N'1131117', N'11310', N'1609  ', 2501911, 2415984, 2129003, 3.5566046237945557, 17.515617370605469, 24667006, 21428575, 15.112675666809082, N'-', CAST(N'2024-11-18T16:30:32.180' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'daee1f50-8412-4867-9c05-4dcc84781014', N'1131117', N'11310', N'8028  ', 344675, 312729, 272314, 10.215234756469727, 26.572633743286133, 2846324, 2846308, 0.00056213198695331812, N'-', CAST(N'2024-11-18T16:30:34.080' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'fa6a5902-a739-44d0-a087-4de273a286aa', N'1131117', N'11310', N'6916  ', 150843, 197001, 151880, -23.430337905883789, -0.68277585506439209, 1694715, 1910202, -11.280848503112793, N'-', CAST(N'2024-11-18T16:30:34.047' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd54bfacd-332a-43e8-90ac-4e8a34e68a87', N'1131117', N'11310', N'2891  ', 15894438, 16301304, 11787572, -2.49591064453125, 34.840644836425781, 157177431, 118671133, 32.447906494140625, N'-', CAST(N'2024-11-18T16:30:33.143' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'109b45ea-8f6c-4cdd-a4ca-4eb31826009a', N'1131117', N'11310', N'1234  ', 750036, 944042, 960839, -20.550569534301758, -21.939472198486328, 8725769, 8924963, -2.2318747043609619, N'-', CAST(N'2024-11-18T16:30:31.413' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b4ddf03d-c124-40e0-a5dd-4f1f33a7b428', N'1131117', N'11310', N'2402  ', 865963, 870663, 750880, -0.539818525314331, 15.326416969299316, 7879647, 7117818, 10.703125953674316, N'-', CAST(N'2024-11-18T16:30:32.773' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ff64ea97-a929-420f-9dd4-4f5511d314e9', N'1131117', N'11310', N'9910  ', 7059096, 6822159, 7840298, 3.4730501174926758, -9.9639320373535156, 72661441, 71070660, 2.2383091449737549, N'合併營業收入為本公司自結數.', CAST(N'2024-11-18T16:30:34.173' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'dbebe638-2b93-4878-b836-4f6e13ea79f3', N'1131117', N'11310', N'4581  ', 95450, 93235, 106207, 2.3757171630859375, -10.128334045410156, 923049, 1005693, -8.21761703491211, N'-', CAST(N'2024-11-18T16:30:33.333' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9fc24a53-b27d-425b-9315-4f739cf4d2e7', N'1131117', N'11310', N'6239  ', 5798085, 5706214, 6086492, 1.6100167036056519, -4.7384767532348633, 62015698, 57493585, 7.8654217720031738, N'-', CAST(N'2024-11-18T16:30:33.747' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'4616fa0f-4e54-44db-90ad-4fa6284c737d', N'1131117', N'11310', N'2441  ', 1260888, 1252598, 1158906, 0.66182446479797363, 8.7998504638671875, 12586647, 11202198, 12.358726501464844, N'-', CAST(N'2024-11-18T16:30:32.833' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'0b979a4d-3a06-496e-bbb9-501827bb707e', N'1131117', N'11310', N'1301  ', 15738889, 16641520, 16306347, -5.4239697456359863, -3.4799823760986328, 165448481, 167702279, -1.3439280986785889, N'-', CAST(N'2024-11-18T16:30:31.480' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'570ff51d-e02d-4cd8-a5ed-50a7978fdd2c', N'1131117', N'11310', N'2524  ', 2539507, 535652, 107491, 374.096435546875, 2262.52978515625, 5979508, 1874598, 218.97547912597656, N'本月因高雄市前金區成功段土地銷售入帳, 致使本月及本年成長百分比變動比率較大。', CAST(N'2024-11-18T16:30:32.957' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'20fe55aa-cd19-4afd-81e7-50e1b6e6e55f', N'1131117', N'11310', N'4952  ', 177110, 181349, 175638, -2.33748197555542, 0.83808743953704834, 2168760, 1844753, 17.563705444335938, N'-', CAST(N'2024-11-18T16:30:33.360' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'e83dd293-5177-4bb2-b19e-50f42cac38ff', N'1131117', N'11310', N'1512  ', 85368, 76033, 97744, 12.27756404876709, -12.661646842956543, 894170, 976430, -8.4245672225952148, N'-', CAST(N'2024-11-18T16:30:32.060' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'5177bb1e-7add-46bb-aaba-513c5eb8b74b', N'1131117', N'11310', N'2611  ', 54268, 55430, 50140, -2.0963377952575684, 8.23294734954834, 557045, 499617, 11.494404792785645, N'-', CAST(N'2024-11-18T16:30:33.030' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'fcd859fe-2853-44fe-839a-51a7f168cc13', N'1131117', N'11310', N'4915  ', 4643337, 5367441, 4984562, -13.49067497253418, -6.8456363677978516, 49668658, 51450209, -3.4626700878143311, N'-', CAST(N'2024-11-18T16:30:33.350' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'5d15ac1a-baa8-42b9-b2e6-51b9aa898a12', N'1131117', N'11310', N'1525  ', 113608, 138583, 112462, -18.021690368652344, 1.0190109014511108, 1201628, 1352203, -11.135532379150391, N'-', CAST(N'2024-11-18T16:30:32.097' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'79a70bd5-941a-4186-a343-521ab2dedc9f', N'1131117', N'11310', N'2258  ', 768190, 749886, 176224, 2.4409043788909912, 335.91677856445312, 7695767, 764704, 906.37200927734375, N'乘用車陸續交車，營收表現優於去年同期。', CAST(N'2024-11-18T16:30:32.510' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'060cb3dc-d7dd-4903-a700-521feab3645e', N'1131117', N'11310', N'2031  ', 1263392, 1068782, 1191436, 18.208578109741211, 6.0394349098205566, 11762464, 13137712, -10.467941284179688, N'-', CAST(N'2024-11-18T16:30:32.397' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd9acfee3-a563-47ac-b2a9-52786ec55e2d', N'1131117', N'11310', N'4552  ', 317203, 321647, 476701, -1.3816388845443726, -33.458709716796875, 3003764, 4061700, -26.046630859375, N'-', CAST(N'2024-11-18T16:30:33.320' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'68f06688-b2dc-4253-b7a2-52a6a8610fe7', N'1131117', N'11310', N'1720  ', 536936, 577357, 509599, -7.0010409355163574, 5.3644142150878906, 5653523, 5156990, 9.6283493041992188, N'-', CAST(N'2024-11-18T16:30:32.253' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'a2a0ff45-628e-44e6-abce-52edb14256de', N'1131117', N'11310', N'2486  ', 515631, 501805, 473828, 2.7552535533905029, 8.8224000930786133, 4489267, 4100671, 9.4764003753662109, N'-', CAST(N'2024-11-18T16:30:32.917' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'35fb8f8e-a03f-4609-8a10-53437ccb0faa', N'1131117', N'11310', N'9912  ', 42323, 38313, 42321, 10.466421127319336, 0.0047257859259843826, 424838, 426426, -0.37239754199981689, N'-', CAST(N'2024-11-18T16:30:34.177' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'54438fcf-bef1-45f5-b42a-53561afd5749', N'1131117', N'11310', N'1587  ', 190030, 182886, 165038, 3.9062585830688477, 15.143178939819336, 1752764, 1781323, -1.6032465696334839, N'-', CAST(N'2024-11-18T16:30:32.150' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'1e201f3b-46b7-4b9f-9c2b-535acdf3e93e', N'1131117', N'11310', N'9944  ', 147807, 144538, 144618, 2.2616889476776123, 2.2051196098327637, 2002102, 1785457, 12.133868217468262, N'-', CAST(N'2024-11-18T16:30:34.203' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'47c24ab4-997a-434b-b90b-5363f8be4032', N'1131117', N'11310', N'3528  ', 451310, 450025, 466275, 0.28553968667984009, -3.2094793319702148, 4397520, 5604261, -21.532562255859375, N'-', CAST(N'2024-11-18T16:30:33.260' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'760792a0-db2d-40d6-949a-5368315faa60', N'1131117', N'11310', N'2539  ', 5755350, 0, 0, NULL, NULL, 7538402, 4543774, 65.906181335449219, N'無異常。本月有「櫻花大櫻國-倫敦花園」及「櫻花聚-聚馥區」建案陸續過戶中。', CAST(N'2024-11-18T16:30:32.987' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'857a49a4-4836-42c6-8f05-539b6f6121bc', N'1131117', N'11310', N'4949  ', 188961, 224764, 277842, -15.929152488708496, -31.989763259887695, 2001972, 4062706, -50.723186492919922, N'主要係本期太陽能模組銷售量較去年同期減少所致', CAST(N'2024-11-18T16:30:33.360' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7be4ae46-e50e-4b68-b1f5-53b7b83104d8', N'1131117', N'11310', N'6230  ', 710181, 752767, 783277, -5.657261848449707, -9.3320751190185547, 6648835, 9307998, -28.568580627441406, N'-', CAST(N'2024-11-18T16:30:33.733' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8fdef7ef-32ef-4451-84dc-53da9c2b53d4', N'1131117', N'11310', N'1713  ', 56770, 32031, 41127, 77.234550476074219, 38.035839080810547, 431740, 387746, 11.346087455749512, N'-', CAST(N'2024-11-18T16:30:32.240' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f87998ae-789d-44e3-b641-543279ecf60f', N'1131117', N'11310', N'2412  ', 20118003, 19486194, 19444350, 3.2423417568206787, 3.4645180702209473, 184790683, 180776852, 2.2203235626220703, N'-', CAST(N'2024-11-18T16:30:32.780' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'09f42986-bad3-4cf1-9314-54632d0abe32', N'1131117', N'11310', N'3406  ', 1974372, 2586457, 2526093, -23.664999008178711, -21.840883255004883, 19701427, 17366283, 13.446423530578613, N'-', CAST(N'2024-11-18T16:30:33.240' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'bda1df35-a436-495b-b710-547ffc5ee892', N'1131117', N'11310', N'1560  ', 593536, 638126, 553579, -6.9876480102539062, 7.2179398536682129, 5779425, 5340042, 8.2280817031860352, N'-', CAST(N'2024-11-18T16:30:32.143' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'916cfa6a-ddd4-40b7-b42c-5499edcdabc6', N'1131117', N'11310', N'1312  ', 1045719, 1200035, 1298379, -12.859292030334473, -19.459650039672852, 13670788, 13283370, 2.9165639877319336, N'-', CAST(N'2024-11-18T16:30:31.560' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'848beaf5-d5fd-4fc7-8188-54be2f90febc', N'1131117', N'11310', N'2425  ', 574857, 506565, 473400, 13.481389045715332, 21.431558609008789, 4622484, 5497985, -15.924034118652344, N'-', CAST(N'2024-11-18T16:30:32.807' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ac226596-a7da-4915-ac29-553665a5af08', N'1131117', N'11310', N'6191  ', 1616903, 1888438, 1875764, -14.378814697265625, -13.800296783447266, 18318252, 19126724, -4.22692346572876, N'-', CAST(N'2024-11-18T16:30:33.653' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'aa60e84a-c329-4900-8ea2-55a9b287c056', N'1131117', N'11310', N'6645  ', 47522, 46459, 24419, 2.288038969039917, 94.610755920410156, 389714, 313681, 24.238956451416016, N'本月增減百分比達50％以上，係因代理設備較去年增加所致。', CAST(N'2024-11-18T16:30:33.933' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd022abd8-52b1-4af4-b873-55ba9f243f2a', N'1131117', N'11310', N'1309  ', 1483350, 1678546, 1451953, -11.628873825073242, 2.1623978614807129, 15402672, 12597827, 22.264514923095703, N'-', CAST(N'2024-11-18T16:30:31.553' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c6765236-9b78-4066-8c49-56b246797f79', N'1131117', N'11310', N'1463  ', 12732, 19206, 30055, -33.708217620849609, -57.637664794921875, 231402, 290760, -20.414775848388672, N'本月接單狀況不理想，較去年同月減少57.64%，雖10月下旬訂單回流但不及生產。', CAST(N'2024-11-18T16:30:31.983' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd8b147fa-94b5-4afd-b13e-56f375dea3b6', N'1131117', N'11310', N'2207  ', 22607879, 20109797, 21711762, 12.422213554382324, 4.1273341178894043, 228783901, 226969462, 0.79941987991333008, N'-', CAST(N'2024-11-18T16:30:32.453' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'84070e02-dd15-4f2f-a04b-57535dbd9444', N'1131117', N'11310', N'1539  ', 128754, 84391, 157494, 52.568401336669922, -18.248313903808594, 1174206, 1259037, -6.7377686500549316, N'-', CAST(N'2024-11-18T16:30:32.130' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'051ee37d-8168-4798-87a7-5775419fc9e1', N'1131117', N'11310', N'5906  ', 142068, 120405, 174452, 17.991777420043945, -18.563272476196289, 1475795, 1749972, -15.667508125305176, N'-', CAST(N'2024-11-18T16:30:33.400' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'bb469035-27f7-47b1-a080-579a13d22820', N'1131117', N'11310', N'8131  ', 713868, 636214, 636862, 12.205641746520996, 12.091473579406738, 7491459, 6328604, 18.374589920043945, N'-', CAST(N'2024-11-18T16:30:34.103' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd97f6869-814e-4b87-ba1e-57cb6389997e', N'1131117', N'11310', N'9939  ', 2142064, 2344676, 1965561, -8.6413640975952148, 8.9797773361206055, 24008745, 22621519, 6.132328987121582, N'-', CAST(N'2024-11-18T16:30:34.200' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ebe784a1-acdc-4cbc-b86f-5878011d2505', N'1131117', N'11310', N'6789  ', 904867, 902408, 551110, 0.2724931538105011, 64.189910888671875, 8218393, 5908165, 39.102294921875, N'因客戶需求增加所致。', CAST(N'2024-11-18T16:30:33.993' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'1bddbb76-e935-4549-911a-5879dfa31d4c', N'1131117', N'11310', N'6117  ', 211793, 256852, 245007, -17.542787551879883, -13.556346893310547, 2361540, 1893079, 24.745983123779297, N'-', CAST(N'2024-11-18T16:30:33.407' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'dbdb2eee-7d3e-430b-b919-58819ea3cc8c', N'1131117', N'11310', N'3437  ', 150617, 135096, 170490, 11.488866806030273, -11.656402587890625, 1703202, 1661113, 2.533782958984375, N'-', CAST(N'2024-11-18T16:30:33.250' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'04a201e8-7e91-41dd-9c87-58aa34b976eb', N'1131117', N'11310', N'6674  ', 126500, 89046, 128242, 42.061405181884766, -1.3583693504333496, 805680, 973527, -17.241125106811523, N'-', CAST(N'2024-11-18T16:30:33.950' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c6159a09-b08c-470b-8f05-58e99929b3a2', N'1131117', N'11310', N'6431  ', 52920, 34806, 33426, 52.042751312255859, 58.319869995117188, 308912, 249719, 23.70384407043457, N'本月營收主要因中國市場消費力提升，故營業收入較去年同期增加', CAST(N'2024-11-18T16:30:33.843' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'4931b0d2-deb1-41dc-be6e-590976eaa0c2', N'1131117', N'11310', N'2312  ', 16698937, 18544764, 15110112, -9.9533596038818359, 10.514978408813477, 135809966, 133398255, 1.8079029321670532, N'-', CAST(N'2024-11-18T16:30:32.547' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'a7f85576-682c-48a1-ae66-5987f25bbe03', N'1131117', N'11310', N'2409  ', 20873385, 25871576, 21167778, -19.319236755371094, -1.390760064125061, 232426797, 205786418, 12.945645332336426, N'-', CAST(N'2024-11-18T16:30:32.780' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'cee117b7-166b-467a-8cb9-59e613764163', N'1131117', N'11310', N'5434  ', 5238146, 5314010, 4343215, -1.4276224374771118, 20.605266571044922, 46328027, 41383249, 11.948742866516113, N'-', CAST(N'2024-11-18T16:30:33.383' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'5d16a2b1-5f5c-4a8e-ab9d-5a349cb1a07f', N'1131117', N'11310', N'2472  ', 905882, 921902, 742940, -1.7377117872238159, 21.93205451965332, 8624264, 7371536, 16.994125366210938, N'-', CAST(N'2024-11-18T16:30:32.890' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'fce898b5-2e37-4894-aeb3-5a4a0c0fb216', N'1131117', N'11310', N'1437  ', 63996, 66233, 65565, -3.3774704933166504, -2.39304518699646, 702154, 742200, -5.3955807685852051, N'-', CAST(N'2024-11-18T16:30:31.823' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9441086e-8875-4a44-8e02-5a6d0cb23174', N'1131117', N'11310', N'3021  ', 287911, 311511, 243383, -7.5759763717651367, 18.295444488525391, 2933007, 2454749, 19.482969284057617, N'-', CAST(N'2024-11-18T16:30:33.177' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b3a972a0-6b3a-43f9-8ac3-5a7e7f472db4', N'1131117', N'11310', N'2606  ', 1346288, 1446829, 1279006, -6.949059009552002, 5.2604913711547852, 13823949, 11684892, 18.306177139282227, N'-', CAST(N'2024-11-18T16:30:33.020' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f9cac97e-b04f-4afa-8781-5a940873724b', N'1131117', N'11310', N'8104  ', 211269, 211224, 238316, 0.021304396912455559, -11.349217414855957, 1960800, 2211838, -11.349746704101563, N'-', CAST(N'2024-11-18T16:30:34.100' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'2ada22f3-75b2-491b-9d24-5abcf0c04c80', N'1131117', N'11310', N'6790  ', 921445, 985886, 889559, -6.5363540649414062, 3.58447265625, 9076250, 8445062, 7.4740481376647949, N'-', CAST(N'2024-11-18T16:30:33.997' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f81466b3-8b7a-4d4a-bf21-5acea48dbc11', N'1131117', N'11310', N'1538  ', 12300, 7790, 13566, 57.894737243652344, -9.3321542739868164, 87616, 172641, -49.249599456787109, N'-', CAST(N'2024-11-18T16:30:32.127' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b1842ccc-ec6f-4be6-b800-5ba82f119ed7', N'1131117', N'11310', N'8411  ', 610311, 702204, 567639, -13.0863676071167, 7.517453670501709, 7085254, 6679486, 6.0748386383056641, N'-', CAST(N'2024-11-18T16:30:34.137' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'02f2b146-46de-4224-9401-5c48ca32dbda', N'1131117', N'11310', N'9935  ', 523482, 518156, 514566, 1.0278757810592651, 1.732722282409668, 4494130, 3776002, 19.018209457397461, N'-', CAST(N'2024-11-18T16:30:34.200' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'168baeef-cfc8-4996-9d87-5cbd41b1e003', N'1131117', N'11310', N'1806  ', 292192, 275590, 289351, 6.0241661071777344, 0.98185247182846069, 2862253, 2548790, 12.298501968383789, N'-', CAST(N'2024-11-18T16:30:32.323' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'dfb1793e-54ec-4670-8873-5d03177db889', N'1131117', N'11310', N'1725  ', 825702, 606712, 636786, 36.094554901123047, 29.667110443115234, 6933408, 6281674, 10.375164031982422, N'-', CAST(N'2024-11-18T16:30:32.267' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b20fe87d-e45d-400a-8ca4-5d483e1cc62d', N'1131117', N'11310', N'2069  ', 895325, 748591, 873381, 19.601358413696289, 2.5125346183776855, 8878435, 9937834, -10.660260200500488, N'-', CAST(N'2024-11-18T16:30:32.413' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'57767409-98d3-42c5-a2ca-5d5c50edb00f', N'1131117', N'11310', N'1102  ', 6572799, 6496635, 6706168, 1.1723607778549194, -1.9887512922286987, 62010612, 66945254, -7.3711605072021484, N'-', CAST(N'2024-11-18T16:30:31.143' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'305263cd-1505-4f5d-a40a-5ddead63bf86', N'1131117', N'11310', N'2340  ', 379816, 410513, 362202, -7.47771692276001, 4.863032341003418, 3570988, 3327444, 7.319251537322998, N'-', CAST(N'2024-11-18T16:30:32.660' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd7f2def4-b937-49e1-a14d-5dfdef3d508a', N'1131117', N'11310', N'4994  ', 135823, 142812, 122673, -4.89384651184082, 10.719554901123047, 1368274, 1343568, 1.8388351202011108, N'-', CAST(N'2024-11-18T16:30:33.370' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'0f91d67d-f61e-4d99-ac7c-5e19038f99cf', N'1131117', N'11310', N'5283  ', 472487, 504099, 385860, -6.2709903717041016, 22.450370788574219, 5446254, 5207535, 4.5841073989868164, N'-', CAST(N'2024-11-18T16:30:33.377' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3ad87e3c-703c-413f-a125-5e2177579074', N'1131117', N'11310', N'1339  ', 142837, 159246, 190165, -10.304183006286621, -24.887861251831055, 1573681, 1695287, -7.17318058013916, N'-', CAST(N'2024-11-18T16:30:31.740' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'da63a628-17d7-4fd7-801a-5ee7b9ab9634', N'1131117', N'11310', N'2485  ', 92265, 90854, 463393, 1.5530411005020142, -80.0892562866211, 2324425, 5021465, -53.710220336914062, N'客戶端因產品驗證而調整出貨時程', CAST(N'2024-11-18T16:30:32.913' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'aeb8f65e-b14a-45dd-8bfe-5eed3991255e', N'1131117', N'11310', N'3356  ', 126308, 89317, 133731, 41.415409088134766, -5.5506949424743652, 1002752, 1062062, -5.5844197273254395, N'-', CAST(N'2024-11-18T16:30:33.237' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8f36682e-2c8d-4a46-9a99-5f1f4e4dd5b1', N'1131117', N'11310', N'8105  ', 845820, 819432, 746630, 3.2202794551849365, 13.285027503967285, 7208368, 7608646, -5.2608308792114258, N'-', CAST(N'2024-11-18T16:30:34.100' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b5670356-7c50-4019-8588-5f4f2cc3c571', N'1131117', N'11310', N'9105  ', 13705262, 15559638, 12737309, -11.917860984802246, 7.5993523597717285, 110081995, 111223280, -1.026120662689209, N'-', CAST(N'2024-11-18T16:30:34.163' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8c357424-8f60-48c5-843e-5f5c496058b1', N'1131117', N'11310', N'8341  ', 316808, 348665, 246861, -9.1368503570556641, 28.334568023681641, 3017621, 2669546, 13.03873348236084, N'-', CAST(N'2024-11-18T16:30:34.127' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'78a4bb79-cc1b-4074-87a7-5fd3f7daa8c1', N'1131117', N'11310', N'1435  ', 1004, 990, 637, 1.4141414165496826, 57.613815307617188, 9683, 7250, 33.558620452880859, N'主要係中和租金收入增加', CAST(N'2024-11-18T16:30:31.813' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'195046ba-26f2-4b56-ba96-6065c3f6a644', N'1131117', N'11310', N'6951  ', 72379, 74426, 42505, -2.7503829002380371, 70.283493041992188, 569399, 395804, 43.858829498291016, N'事業廢棄物清運量、塑木專案及勞務收入增加', CAST(N'2024-11-18T16:30:34.063' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'0f3f32ef-3f9b-4ea9-bdc6-6089c6d60037', N'1131117', N'11310', N'8438  ', 272472, 301193, 262085, -9.5357465744018555, 3.9632179737091064, 2811099, 2556861, 9.943364143371582, N'-', CAST(N'2024-11-18T16:30:34.143' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'2577507f-1449-493a-be46-60b58859c1b8', N'1131117', N'11310', N'3032  ', 577364, 589212, 670983, -2.0108213424682617, -13.9525146484375, 6041360, 6793704, -11.074135780334473, N'-', CAST(N'2024-11-18T16:30:33.190' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'80394141-f4f2-417e-8407-615a0c8ae110', N'1131117', N'11310', N'6715  ', 207518, 189538, 162241, 9.4862241744995117, 27.907249450683594, 1902686, 2037618, -6.6220459938049316, N'-', CAST(N'2024-11-18T16:30:33.960' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'e147b3e0-4877-411f-8623-61887c32e717', N'1131117', N'11310', N'3338  ', 288371, 294746, 374837, -2.1628792285919189, -23.067626953125, 3090537, 3101895, -0.36616325378417969, N'-', CAST(N'2024-11-18T16:30:33.237' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9d6493e7-d1a6-4b97-baae-6203571263f0', N'1131117', N'11310', N'1618  ', 220155, 276802, 190276, -20.464809417724609, 15.70297908782959, 3542043, 3370820, 5.0795650482177734, N'-', CAST(N'2024-11-18T16:30:32.200' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd288f7f6-ec57-49b1-b5da-621419410453', N'1131117', N'11310', N'1444  ', 760976, 710908, 535533, 7.0428242683410645, 42.096939086914062, 6873900, 7089730, -3.0442626476287842, N'-', CAST(N'2024-11-18T16:30:31.927' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'4198a946-ebd6-446a-8f6f-626800ac01aa', N'1131117', N'11310', N'6706  ', 109568, 84880, 101021, 29.08576774597168, 8.4606170654296875, 671309, 1173698, -42.803939819335938, N'-', CAST(N'2024-11-18T16:30:33.960' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'80dc755b-1d40-4fb2-a126-626ff9633d3d', N'1131117', N'11310', N'6449  ', 331580, 326002, 261331, 1.7110323905944824, 26.881235122680664, 2792540, 2379396, 17.3633975982666, N'-', CAST(N'2024-11-18T16:30:33.860' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'320563e3-6e53-4d8d-86b5-62c6dbff6ea3', N'1131117', N'11310', N'2204  ', 2374520, 2729237, 3719261, -12.996929168701172, -36.156135559082031, 34611383, 31428319, 10.128012657165527, N'-', CAST(N'2024-11-18T16:30:32.447' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'6aabd5dc-abd1-427b-ae9e-62e0e8ca078e', N'1131117', N'11310', N'2546  ', 1429615, 1276590, 1119240, 11.987011909484863, 27.730871200561523, 11337252, 11336906, 0.0030519790016114712, N'-', CAST(N'2024-11-18T16:30:33.000' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ade82ab5-a6e2-44cc-8504-6311dc8f95b1', N'1131117', N'11310', N'1711  ', 641785, 675314, 678070, -4.9649496078491211, -5.3512172698974609, 6778852, 6596543, 2.7637052536010742, N'-', CAST(N'2024-11-18T16:30:32.233' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'1df5bd2d-cf85-46a6-acb4-63234afe7d6b', N'1131117', N'11310', N'1316  ', 163565, 154633, 37856, 5.7762575149536133, 332.071533203125, 1131274, 700292, 61.543186187744141, N'主因子公司營收上升，致本月及本年度營收較去年同期增加。', CAST(N'2024-11-18T16:30:31.693' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'068ff40c-3a58-491c-a709-632b6bc32043', N'1131117', N'11310', N'3413  ', 1604601, 1616439, 1076432, -0.73235052824020386, 49.0666389465332, 13259679, 10747889, 23.370077133178711, N'-', CAST(N'2024-11-18T16:30:33.240' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f29d17a6-3213-495d-98b3-632f66e8d56b', N'1131117', N'11310', N'2211  ', 1051980, 1159962, 520497, -9.3090982437133789, 102.11067199707031, 10523654, 9640202, 9.1642475128173828, N'主要為鋼構事業認列收入噸數較去年同期增加，致營收增加。', CAST(N'2024-11-18T16:30:32.460' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'5aa45000-678a-4ce5-b286-635cdb3c96d2', N'1131117', N'11310', N'2637  ', 1689193, 1772075, 1617652, -4.6771159172058105, 4.4225211143493652, 17399343, 13709120, 26.918014526367188, N'-', CAST(N'2024-11-18T16:30:33.050' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'0e67614c-cd13-4ccb-ab51-637ec6fa3ba3', N'1131117', N'11310', N'8443  ', 91651, 113462, 94828, -19.223176956176758, -3.3502762317657471, 908085, 982720, -7.5947370529174805, N'-', CAST(N'2024-11-18T16:30:34.147' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c009090c-cb1b-482f-9226-63f4e7e0604a', N'1131117', N'11310', N'4976  ', 81612, 93126, 72002, -12.363894462585449, 13.346851348876953, 959592, 780270, 22.982044219970703, N'-', CAST(N'2024-11-18T16:30:33.367' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'acf10987-6992-49b1-bd2e-64195ea6b82c', N'1131117', N'11310', N'3138  ', 138563, 158081, 168153, -12.346835136413574, -17.597068786621094, 1395978, 1435811, -2.7742509841918945, N'-', CAST(N'2024-11-18T16:30:33.223' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'238aa614-fb82-4032-98d7-6433bf1236cf', N'1131117', N'11310', N'6525  ', 401758, 395416, 395058, 1.6038805246353149, 1.6959534883499146, 3843046, 3664455, 4.873603343963623, N'-', CAST(N'2024-11-18T16:30:33.887' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd466141d-33df-40f1-94d5-6433f30ca2ba', N'1131117', N'11310', N'2461  ', 444838, 444256, 477280, 0.13100554049015045, -6.7972679138183594, 4599389, 4677060, -1.6606800556182861, N'-', CAST(N'2024-11-18T16:30:32.870' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'277034c2-714d-4640-bfa8-64433eca5d6a', N'1131117', N'11310', N'5484  ', 42181, 22572, 34357, 86.873115539550781, 22.772651672363281, 400129, 308620, 29.651027679443359, N'-', CAST(N'2024-11-18T16:30:33.383' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'27405b51-96bf-4f8c-94ba-6446b13456c3', N'1131117', N'11310', N'6491  ', 596564, 577757, 709982, 3.2551746368408203, -15.974771499633789, 5619064, 5462083, 2.8740134239196777, N'-', CAST(N'2024-11-18T16:30:33.877' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'bce8666a-4695-4d1c-be78-646e2e20074d', N'1131117', N'11310', N'8499  ', 179760, 171074, 140896, 5.0773348808288574, 27.583465576171875, 1663302, 1520623, 9.3829307556152344, N'-', CAST(N'2024-11-18T16:30:34.160' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'91696bd4-7ee7-4ae9-9a1d-648be27b705d', N'1131117', N'11310', N'1109  ', 348562, 317761, 531941, 9.6931343078613281, -34.473560333251953, 3880738, 5157727, -24.758754730224609, N'-', CAST(N'2024-11-18T16:30:31.163' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ca6d872e-16e6-4214-bdd3-648c3f0e6af2', N'1131117', N'11310', N'8101  ', 6818, 18973, 18661, -64.0647201538086, -63.463909149169922, 83404, 139735, -40.312736511230469, N'主要客戶庫存去化中', CAST(N'2024-11-18T16:30:34.093' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'945991d2-ebe8-4fb4-a01d-654819aab06f', N'1131117', N'11310', N'8488  ', 214996, 281510, 305423, -23.627580642700195, -29.607135772705078, 2563142, 3117390, -17.779232025146484, N'-', CAST(N'2024-11-18T16:30:34.160' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'096e5947-e4ef-4e75-a29c-6561634de4d6', N'1131117', N'11310', N'1532  ', 943508, 1068464, 1018575, -11.694918632507324, -7.3698058128356934, 15977611, 13986698, 14.234332084655762, N'-', CAST(N'2024-11-18T16:30:32.113' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b3b2ae40-8047-41d4-a8fd-656ef166a802', N'1131117', N'11310', N'6854  ', 234103, 220190, 84687, 6.318634033203125, 176.43321228027344, 1288448, 782767, 64.601730346679688, N'本月及本年累計營收增加主要係因客戶需求增加所致。', CAST(N'2024-11-18T16:30:34.023' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7d2a9432-4aa3-4304-92c6-657b021ae849', N'1131117', N'11310', N'3015  ', 935103, 1043734, 1042266, -10.407919883728027, -10.281732559204102, 9662359, 11326533, -14.692704200744629, N'-', CAST(N'2024-11-18T16:30:33.177' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'69358ce3-7d98-42ed-889b-660d811f6ed9', N'1131117', N'11310', N'4190  ', 193101, 171271, 231439, 12.745882034301758, -16.565055847167969, 1894535, 2506255, -24.407732009887695, N'-', CAST(N'2024-11-18T16:30:33.310' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'2361f685-921d-40c4-b6b0-66af6b4d90c1', N'1131117', N'11310', N'2923  ', 364898, 332798, 212228, 9.6454906463623047, 71.936782836914062, 8006997, 7658545, 4.5498461723327637, N'本月營收增加主係本月新樓盤交房增加所致。', CAST(N'2024-11-18T16:30:33.163' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'a549f839-c4b5-4c27-849a-66c324b68ed3', N'1131117', N'11310', N'3036  ', 98597074, 84514548, 67633958, 16.662841796875, 45.780429840087891, 796151367, 472456764, 68.5130615234375, N'收購Future Electronics、半導體產業循環的基期差異、公司市佔率的提升。', CAST(N'2024-11-18T16:30:33.193' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'58a77916-3cae-4b6d-80aa-66ecce25f185', N'1131117', N'11310', N'2498  ', 223407, 337794, 215940, -33.862945556640625, 3.4579050540924072, 2358770, 3434414, -31.319578170776367, N'-', CAST(N'2024-11-18T16:30:32.933' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b22ea0ab-8e6f-428d-94c4-6736e3a992ac', N'1131117', N'11310', N'4306  ', 1172786, 1291101, 1309994, -9.163884162902832, -10.4739408493042, 13727702, 10529198, 30.377470016479492, N'-', CAST(N'2024-11-18T16:30:33.310' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'2f4c3710-f01c-41d8-bbb6-6751de5efa19', N'1131117', N'11310', N'2012  ', 857280, 831398, 709170, 3.1130697727203369, 20.884977340698242, 7457323, 6947610, 7.3365230560302734, N'-', CAST(N'2024-11-18T16:30:32.367' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'fa89b70a-2396-4932-b887-6770fcfe4c54', N'1131117', N'11310', N'1477  ', 2647647, 3291362, 2477334, -19.557708740234375, 6.8748502731323242, 29414731, 26807770, 9.72464656829834, N'-', CAST(N'2024-11-18T16:30:32.030' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'01a1b571-a85b-4819-8ee9-67c80a648509', N'1131117', N'11310', N'8112  ', 16031408, 24588497, 14022018, -34.801189422607422, 14.33024787902832, 202373722, 116993251, 72.978973388671875, N'主要係上半年伺服器客戶需求增長及手機客戶持續拉貨，致使本期累計營收較去年同期成長。', CAST(N'2024-11-18T16:30:34.100' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'81b940a2-a19e-4bd8-801f-68016582cdfc', N'1131117', N'11310', N'2609  ', 18993369, 21619938, 11301611, -12.14882755279541, 68.058952331542969, 188222406, 119202536, 57.901344299316406, N'整體運價上漲，致營收增加。', CAST(N'2024-11-18T16:30:33.030' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8fc3e99c-9d93-4405-ab06-680ef921e6c3', N'1131117', N'11310', N'6412  ', 3342735, 3620401, 3148221, -7.6694817543029785, 6.1785368919372559, 30649097, 30450191, 0.65321755409240723, N'-', CAST(N'2024-11-18T16:30:33.813' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd2e64a3c-812f-40be-82c2-6845397c2a7c', N'1131117', N'11310', N'2536  ', 31283, 14922, 51009, 109.64347839355469, -38.671607971191406, 629460, 225476, 179.16940307617188, N'今年本期認列租金收入及出售道路地', CAST(N'2024-11-18T16:30:32.977' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'78b5cc9a-62a3-49b2-acfb-6852cfb33799', N'1131117', N'11310', N'2009  ', 249383, 257054, 218383, -2.9841978549957275, 14.195243835449219, 2586268, 2141182, 20.786930084228516, N'-', CAST(N'2024-11-18T16:30:32.363' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'6090f8f2-e86b-4c53-bc28-687a265201c3', N'1131117', N'11310', N'2537  ', 501, 501, 82100, NULL, -99.3897705078125, 1512942, 438749, 244.83087158203125, N'本月營收較去年減少，係去年同期認列台北市房地出售收入較高所致。', CAST(N'2024-11-18T16:30:32.980' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'02c5a300-5b10-48ae-ad12-68c7328547c1', N'1131117', N'11310', N'2364  ', 100810, 121690, 82574, -17.158353805541992, 22.084432601928711, 1025216, 869408, 17.921159744262695, N'-', CAST(N'2024-11-18T16:30:32.713' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'92143aa3-6737-420f-9fdd-69019dcf2710', N'1131117', N'11310', N'4526  ', 498375, 455984, 547976, 9.2965984344482422, -9.0516738891601562, 4530957, 6256232, -27.576902389526367, N'-', CAST(N'2024-11-18T16:30:33.313' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9ed9b2d2-0efe-4425-833d-69501c7a55dd', N'1131117', N'11310', N'2104  ', 1490017, 1312107, 1723632, 13.559107780456543, -13.5536470413208, 15593839, 15151408, 2.92006516456604, N'-', CAST(N'2024-11-18T16:30:32.430' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'27bf3673-be78-4f62-8746-697cbc10b1ba', N'1131117', N'11310', N'6695  ', 93397, 93510, 90165, -0.12084268778562546, 3.5845394134521484, 802829, 924230, -13.135366439819336, N'-', CAST(N'2024-11-18T16:30:33.957' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'e5202f70-156c-41c9-88c6-69b589dd10d8', N'1131117', N'11310', N'1597  ', 82287, 84718, 80316, -2.8695199489593506, 2.45405650138855, 866660, 918713, -5.665860652923584, N'-', CAST(N'2024-11-18T16:30:32.160' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b541cbba-a0dd-46e7-8370-6a69c8af9bef', N'1131117', N'11310', N'3035  ', 930020, 942900, 926905, -1.3659985065460205, 0.33606463670730591, 9042077, 10068654, -10.195772171020508, N'-', CAST(N'2024-11-18T16:30:33.190' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b249d1ab-ed4c-4138-9af6-6a9e2e4b4a76', N'1131117', N'11310', N'1608  ', 861992, 903344, 747916, -4.5776581764221191, 15.252514839172363, 9516495, 7935224, 19.927238464355469, N'-', CAST(N'2024-11-18T16:30:32.180' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'1d768cff-3ba1-46e4-9ac0-6ada2f844d45', N'1131117', N'11310', N'3376  ', 1164173, 1214558, 943686, -4.1484227180480957, 23.364444732666016, 11201493, 8019179, 39.683788299560547, N'-', CAST(N'2024-11-18T16:30:33.237' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'e3149a74-0d17-4d2a-846b-6affa9328aed', N'1131117', N'11310', N'6969  ', 21784, 21121, 10408, 3.1390559673309326, 109.300537109375, 139400, 106758, 30.575695037841797, N'本期因中科廠開始運作，故較去年同期增加超過50%', CAST(N'2024-11-18T16:30:34.070' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'a36a55ec-b6d7-43c0-a3c7-6b026bdcd261', N'1131117', N'11310', N'3231  ', 96284824, 96903570, 78402929, -0.63851726055145264, 22.807687759399414, 848358844, 715449131, 18.577102661132812, N'-', CAST(N'2024-11-18T16:30:33.227' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'cbcda555-ae0e-4d83-8601-6b0d248601b0', N'1131117', N'11310', N'3028  ', 2866824, 3317649, 2798823, -13.588688850402832, 2.4296283721923828, 30614711, 27082483, 13.042482376098633, N'-', CAST(N'2024-11-18T16:30:33.187' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'6953145e-3200-4d00-8e4f-6b8ec07fd273', N'1131117', N'11310', N'3062  ', 230243, 281223, 418863, -18.127962112426758, -45.031429290771484, 2710647, 3226230, -15.980975151062012, N'-', CAST(N'2024-11-18T16:30:33.220' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'24f17ffe-0004-4840-b978-6bc060dd1a21', N'1131117', N'11310', N'2538  ', 20707, 18799, 16600, 10.149476051330566, 24.740962982177734, 874042, 296826, 194.46275329589844, N'本年有建案交屋認列收入，故本年營收增加', CAST(N'2024-11-18T16:30:32.983' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'148ce37f-d9ca-4ce9-8e9a-6be15f040a6b', N'1131117', N'11310', N'2434  ', 3768, 3733, 7391, 0.93758368492126465, -49.019077301025391, 41569, 52128, -20.255908966064453, N'-', CAST(N'2024-11-18T16:30:32.823' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'cc171884-b638-46f1-a625-6c00a02cfa2f', N'1131117', N'11310', N'1513  ', 2323719, 2105114, 2005685, 10.384472846984863, 15.856627464294434, 20982575, 18303903, 14.634430885314941, N'-', CAST(N'2024-11-18T16:30:32.063' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd46eb359-54f9-40b4-8431-6c4f6a118c9b', N'1131117', N'11310', N'2348  ', 2694718, 633961, 552765, 325.060546875, 387.49795532226562, 8532427, 4161836, 105.01593780517578, N'本月及本年度增減百分比達50％以上，係因本期認列建案營建收入及出售寶元段土地收入(已於113/7/26取處公告)。', CAST(N'2024-11-18T16:30:32.677' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'905cdc86-3680-40b3-a98b-6cad3c63fe95', N'1131117', N'11310', N'5469  ', 3404230, 3833666, 3610562, -11.201705932617188, -5.7146782875061035, 34859109, 36501605, -4.499791145324707, N'無', CAST(N'2024-11-18T16:30:33.383' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b56873df-b621-47c0-86f5-6cfc98455762', N'1131117', N'11310', N'2506  ', 67410, 157094, 145672, -57.089385986328125, -53.724807739257812, 1311273, 891599, 47.069816589355469, N'本月交屋較去年同期少', CAST(N'2024-11-18T16:30:32.940' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'18567a39-6d1e-49ba-baa3-6d3fed16906f', N'1131117', N'11310', N'1516  ', 0, 3929, 96389, -100, -100, 593585, 729553, -18.637165069580078, N'終端客戶去化庫存及風險管控', CAST(N'2024-11-18T16:30:32.073' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'34726953-be6a-420c-87e5-6e0865c989b6', N'1131117', N'11310', N'2851  ', 1923433, 1867888, 1803183, 2.9736793041229248, 6.6687631607055664, 19251506, 18463346, 4.2687821388244629, N'-', CAST(N'2024-11-18T16:30:33.110' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'bdfad89e-eb5b-4683-9d8f-6e65a7c6374c', N'1131117', N'11310', N'1783  ', 61973, 63049, 45765, -1.7066091299057007, 35.41571044921875, 536989, 519138, 3.4385848045349121, N'-', CAST(N'2024-11-18T16:30:32.307' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'53a7c48c-96ab-4c21-84f3-6eaab35f9724', N'1131117', N'11310', N'6168  ', 165569, 169872, 192396, -2.53308367729187, -13.943636894226074, 1639785, 1675817, -2.1501154899597168, N'-', CAST(N'2024-11-18T16:30:33.460' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'4b3c0d1e-04ef-49c5-b5cb-6ec4119cc6e8', N'1131117', N'11310', N'3257  ', 50035, 70016, 100422, -28.537763595581055, -50.175258636474609, 714909, 895542, -20.170244216918945, N'客戶需求減少', CAST(N'2024-11-18T16:30:33.227' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'0c88db37-be22-418c-a116-6ee3b110e8bb', N'1131117', N'11310', N'2816  ', 951643, 854790, 781647, 11.330618858337402, 21.748435974121094, 9068521, 8387927, 8.1139717102050781, N'-', CAST(N'2024-11-18T16:30:33.097' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'324ab8fb-779e-4b50-aa0f-6f2e8a8caff3', N'1131117', N'11310', N'5522  ', 2180633, 2776267, 1493898, -21.454492568969727, 45.969337463378906, 19800077, 13277226, 49.128116607666016, N'-', CAST(N'2024-11-18T16:30:33.390' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'86191be6-5a45-4189-9f63-6fa8b6f7406a', N'1131117', N'11310', N'6108  ', 355382, 399813, 492567, -11.112945556640625, -27.851034164428711, 4402915, 5032837, -12.516241073608398, N'-', CAST(N'2024-11-18T16:30:33.407' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd69d8640-947b-4b47-8083-700a5af8bf30', N'1131117', N'11310', N'9940  ', 787360, 836239, 1117008, -5.8450994491577148, -29.511695861816406, 11170718, 11924816, -6.3237705230712891, N'-', CAST(N'2024-11-18T16:30:34.200' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'a15c1043-6666-4b1c-bedf-705c89697ad0', N'1131117', N'11310', N'5243  ', 1346529, 1101101, 941531, 22.289327621459961, 43.014835357666016, 10790408, 9826016, 9.8146800994873047, N'-', CAST(N'2024-11-18T16:30:33.373' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8118f543-8e9f-4b20-8387-70b9cd2f189b', N'1131117', N'11310', N'6005  ', 1208089, 1417117, 901164, -14.750228881835938, 34.0587272644043, 14318599, 10057991, 42.360427856445312, N'-', CAST(N'2024-11-18T16:30:33.403' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'4ef49f6f-928a-45c3-8ceb-71056035e869', N'1131117', N'11310', N'3673  ', 5369518, 5660416, 5967036, -5.1391630172729492, -10.01364803314209, 58399409, 57573146, 1.4351534843444824, N'-', CAST(N'2024-11-18T16:30:33.283' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'aa389c68-e21b-43c8-a2d9-711177eff429', N'1131117', N'11310', N'3024  ', 311371, 100591, 151692, 209.54161071777344, 105.26527404785156, 1461386, 1330252, 9.8578310012817383, N'本月子公司建案完工開始交屋，使營收增加', CAST(N'2024-11-18T16:30:33.180' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f74edd7d-d716-49b0-a2e6-71411099dd72', N'1131117', N'11310', N'2945  ', 1293381, 1238277, 1198860, 4.4500541687011719, 7.88424015045166, 11893274, 11714336, 1.5275129079818726, N'-', CAST(N'2024-11-18T16:30:33.167' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'4401a1e5-b482-4eef-90f6-715f4360df0f', N'1131117', N'11310', N'6205  ', 104794, 116974, 94628, -10.412569999694824, 10.743120193481445, 1187407, 1158278, 2.5148539543151855, N'-', CAST(N'2024-11-18T16:30:33.670' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c61c616a-9d6f-4685-80d7-72f77994bc8d', N'1131117', N'11310', N'3013  ', 773935, 825693, 678312, -6.2684316635131836, 14.097200393676758, 7501733, 5333614, 40.650093078613281, N'-', CAST(N'2024-11-18T16:30:33.173' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8c3dd029-6927-4e29-9b2e-73b2d560b2bd', N'1131117', N'11310', N'2388  ', 1634881, 2649497, 1023680, -38.2946662902832, 59.706256866455078, 12042621, 9457264, 27.337261199951172, N'出貨增加', CAST(N'2024-11-18T16:30:32.757' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'a6b77173-923f-4132-bd40-74a774cb0784', N'1131117', N'11310', N'2880  ', 5694515, 5428595, 4642623, 4.8985052108764648, 22.657278060913086, 56799383, 49637910, 14.4274263381958, N'-', CAST(N'2024-11-18T16:30:33.123' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'148a69db-3681-4cc4-a5ff-74d233bbfbb9', N'1131117', N'11310', N'2231  ', 505180, 427571, 351182, 18.151138305664062, 43.851337432861328, 3699826, 3682877, 0.46021085977554321, N'-', CAST(N'2024-11-18T16:30:32.470' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c43f8ba2-a5a7-43e0-aa33-74eb96ac5847', N'1131117', N'11310', N'1583  ', 362445, 364936, 453815, -0.68258541822433472, -20.133754730224609, 3674524, 4340622, -15.345681190490723, N'-', CAST(N'2024-11-18T16:30:32.150' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'6a35eb0c-5bfa-4d37-b206-756f54e02ebf', N'1131117', N'11310', N'5222  ', 102732, 102782, 116456, -0.048646651208400726, -11.784708023071289, 1074753, 993409, 8.1883697509765625, N'-', CAST(N'2024-11-18T16:30:33.373' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'cfb4e7be-eacd-45d3-870a-757ec0e61bb5', N'1131117', N'11310', N'6409  ', 1556029, 1967547, 1378607, -20.915281295776367, 12.869657516479492, 19362569, 15735765, 23.048158645629883, N'-', CAST(N'2024-11-18T16:30:33.807' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'59a24bad-5ba9-45df-b576-75b0208500de', N'1131117', N'11310', N'3450  ', 864645, 797761, 499660, 8.3839645385742188, 73.046669006347656, 5955756, 4460543, 33.5208740234375, N'因本期客戶需求增加，致使營收增加。', CAST(N'2024-11-18T16:30:33.250' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'a62b2c58-6886-43b7-b2b9-75ffbf1e32ff', N'1131117', N'11310', N'5284  ', 252569, 207514, 190732, 21.711788177490234, 32.420883178710938, 1937229, 1950288, -0.66959339380264282, N'-', CAST(N'2024-11-18T16:30:33.377' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ac7ab5ba-ffee-46ee-864a-7612f9843826', N'1131117', N'11310', N'6957  ', 272706, 374127, 176730, -27.108709335327148, 54.306568145751953, 3143762, 3474405, -9.516535758972168, N'營收波動因各別客戶展店或汰舊換新時程影響，故使本期較去年同期增加。', CAST(N'2024-11-18T16:30:34.067' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b4b29df4-2265-4681-bb25-7656ee90769a', N'1131117', N'11310', N'8222  ', 83906, 74630, 46675, 12.429318428039551, 79.766471862792969, 707289, 558327, 26.680063247680664, N'去年度因生產不及所致', CAST(N'2024-11-18T16:30:34.120' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7e1fd4b9-3d97-4976-9b9f-768c3b07be38', N'1131117', N'11310', N'3017  ', 7080952, 6351281, 5513752, 11.488564491271973, 28.423477172851562, 57938178, 47987999, 20.734724044799805, N'-', CAST(N'2024-11-18T16:30:33.177' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'82ab4c0a-32e0-4015-a268-76e675f82bd8', N'1131117', N'11310', N'1517  ', 149607, 165385, 118924, -9.54016399383545, 25.800510406494141, 1604554, 1600041, 0.28205525875091553, N'-', CAST(N'2024-11-18T16:30:32.077' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3268c336-437c-484e-8002-7707b7676679', N'1131117', N'11310', N'2618  ', 18236042, 17357692, 17525306, 5.0602927207946777, 4.0554842948913574, 182685438, 163823681, 11.513449668884277, N'-', CAST(N'2024-11-18T16:30:33.043' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f8b2c72b-3751-4e9a-918a-7773d2d1c00d', N'1131117', N'11310', N'2702  ', 135302, 122970, 140025, 10.028462409973145, -3.3729691505432129, 1223066, 1212634, 0.86027604341506958, N'-', CAST(N'2024-11-18T16:30:33.060' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3875d88b-db5c-4a84-a264-7792c4164e50', N'1131117', N'11310', N'9905  ', 492485, 723097, 527198, -31.892263412475586, -6.5844330787658691, 7089024, 7327430, -3.2536101341247559, N'-', CAST(N'2024-11-18T16:30:34.170' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'1ec75bae-c734-4d7c-91d3-7798f653990b', N'1131117', N'11310', N'3047  ', 635277, 613460, 375697, 3.5563850402832031, 69.092910766601562, 5856576, 3626505, 61.493671417236328, N'子公司新市場出貨增加所致', CAST(N'2024-11-18T16:30:33.203' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'624f8f5d-8af6-412f-a932-781a57a84aac', N'1131117', N'11310', N'3454  ', 736622, 655568, 653722, 12.363934516906738, 12.681231498718262, 5893184, 7956211, -25.929767608642578, N'-', CAST(N'2024-11-18T16:30:33.250' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'4183e340-d43e-488e-b8e9-78aaa1de4937', N'1131117', N'11310', N'6142  ', 120280, 139121, 102024, -13.542886734008789, 17.893829345703125, 933501, 2392425, -60.980972290039062, N'淡季及客戶需求調整', CAST(N'2024-11-18T16:30:33.427' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'eaa9cdbb-9968-4c69-90a4-78de8c256e8a', N'1131117', N'11310', N'4916  ', 284118, 264983, 330225, 7.2212181091308594, -13.962298393249512, 3046535, 2858179, 6.5900702476501465, N'-', CAST(N'2024-11-18T16:30:33.350' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7520db0f-d65c-44e3-af64-790a20e0ea24', N'1131117', N'11310', N'2488  ', 323695, 336832, 219171, -3.9001638889312744, 47.690616607666016, 2449635, 2044434, 19.81971549987793, N'-', CAST(N'2024-11-18T16:30:32.917' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'01b856d6-0b94-4b32-8635-79122d437138', N'1131117', N'11310', N'2414  ', 2440026, 2170149, 1969193, 12.435873985290527, 23.909946441650391, 19833119, 19606956, 1.153483510017395, N'-', CAST(N'2024-11-18T16:30:32.783' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'83eec3b4-1ede-4c53-8387-794ece244695', N'1131117', N'11310', N'5225  ', 1085744, 1327463, 940649, -18.209095001220703, 15.424988746643066, 10724030, 9070126, 18.234630584716797, N'-', CAST(N'2024-11-18T16:30:33.373' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'4a3aeea3-5951-475f-9b7b-7991bbab7301', N'1131117', N'11310', N'3189  ', 2576678, 2646537, 2508336, -2.6396381855010986, 2.7245950698852539, 25068664, 21851060, 14.725162506103516, N'-', CAST(N'2024-11-18T16:30:33.227' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ca306392-70fd-4004-9f11-7a0c5680be3f', N'1131117', N'11310', N'1563  ', 669091, 597422, 713963, 11.996377944946289, -6.2849197387695312, 6214724, 6287448, -1.156653642654419, N'-', CAST(N'2024-11-18T16:30:32.143' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'bca6ba3d-63c7-4784-9778-7a34a93cd9cf', N'1131117', N'11310', N'1522  ', 1674636, 1536105, 1658614, 9.0183286666870117, 0.96598726511001587, 16758809, 16110424, 4.024630069732666, N'-', CAST(N'2024-11-18T16:30:32.090' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'e8a84236-820b-44fb-8484-7ae8fa65f952', N'1131117', N'11310', N'1734  ', 289331, 209681, 238270, 37.986274719238281, 21.429889678955078, 2585989, 2454187, 5.3704953193664551, N'-', CAST(N'2024-11-18T16:30:32.283' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'e959d9c0-a2e7-474a-a28c-7b03016e3134', N'1131117', N'11310', N'6224  ', 270232, 331719, 238173, -18.535869598388672, 13.460383415222168, 2434066, 2376369, 2.4279477596282959, N'-', CAST(N'2024-11-18T16:30:33.713' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd2fa4fb2-508b-4f19-9067-7b162705d944', N'1131117', N'11310', N'1456  ', 48263, 97066, 101451, -50.278160095214844, -52.427280426025391, 891763, 1550749, -42.49468994140625, N'本月認列建設收入較去年本月減少所致', CAST(N'2024-11-18T16:30:31.967' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'5086a6b1-3cc4-46cc-8de3-7b2c478eebf1', N'1131117', N'11310', N'2023  ', 5820903, 5821470, 6284195, -0.0097398078069090843, -7.3723363876342773, 61976291, 61170359, 1.3175204992294312, N'-', CAST(N'2024-11-18T16:30:32.383' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'2fc0d7a1-bebb-4198-b388-7b4490299ea3', N'1131117', N'11310', N'3380  ', 1770171, 1909565, 1572369, -7.2997775077819824, 12.57987117767334, 17585808, 23048435, -23.700641632080078, N'-', CAST(N'2024-11-18T16:30:33.240' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3d6ba9e5-0817-4378-8c28-7b8217eb4813', N'1131117', N'11310', N'2514  ', 1852921, 2724461, 1958164, -31.989446640014648, -5.374575138092041, 21282909, 13603576, 56.450839996337891, N'因本年度完成土地出售交易、子公司營建收入成長及合併泰山(1218)，致營收較去年增加。', CAST(N'2024-11-18T16:30:32.950' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'92676b59-8ee0-4ada-a315-7b9aa104f77c', N'1131117', N'11310', N'6164  ', 48303, 57709, 60395, -16.299016952514648, -20.021524429321289, 680334, 595255, 14.292865753173828, N'-', CAST(N'2024-11-18T16:30:33.447' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'2960c8e6-5b26-424c-be5c-7ba9fe7e5e1b', N'1131117', N'11310', N'9958  ', 1036505, 1025697, 1293984, 1.0537225008010864, -19.898159027099609, 10086321, 10833128, -6.8937339782714844, N'-', CAST(N'2024-11-18T16:30:34.207' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'bc0623da-9736-4c14-8494-7c25a04ffb17', N'1131117', N'11310', N'6235  ', 382878, 419239, 531373, -8.673095703125, -27.945529937744141, 4968070, 4758039, 4.4142346382141113, N'-', CAST(N'2024-11-18T16:30:33.740' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c9f925ba-45a0-45cb-bf80-7c67d1f2cf0e', N'1131117', N'11310', N'4155  ', 144651, 178073, 86110, -18.768707275390625, 67.983970642089844, 1390839, 1002230, 38.774433135986328, N'113年10月營收較112年10月增加，係因北非客戶銷售成長及自113年10月起美國子公司Prodigy營收併入本公司所致。', CAST(N'2024-11-18T16:30:33.307' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7c1b1d28-69ce-47a1-b0e2-7c815416c0ee', N'1131117', N'11310', N'5244  ', 75924, 84150, 80179, -9.77540111541748, -5.3068757057189941, 707921, 697856, 1.4422745704650879, N'-', CAST(N'2024-11-18T16:30:33.373' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'278b7ad8-951c-4d85-818c-7c8a9e9f064d', N'1131117', N'11310', N'6277  ', 445913, 445707, 417638, 0.046218704432249069, 6.7702174186706543, 4092660, 4254503, -3.8040401935577393, N'-', CAST(N'2024-11-18T16:30:33.770' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'2326eebc-618e-4958-84b6-7ccf39cf3539', N'1131117', N'11310', N'8463  ', 581445, 592900, 466368, -1.9320290088653565, 24.675149917602539, 5395730, 4346180, 24.148792266845703, N'-', CAST(N'2024-11-18T16:30:34.150' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'44970a37-2e95-4771-aa7b-7cdc8471c1e9', N'1131117', N'11310', N'1589  ', 642383, 647069, 678255, -0.72418862581253052, -5.2888665199279785, 5648363, 7176863, -21.297605514526367, N'-', CAST(N'2024-11-18T16:30:32.153' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'fa414af6-501c-44c1-9afe-7cf099edfd77', N'1131117', N'11310', N'2010  ', 2037312, 2039061, 1684521, -0.085774779319763184, 20.943105697631836, 19606853, 17605635, 11.366917610168457, N'-', CAST(N'2024-11-18T16:30:32.363' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'6aefa72a-44c2-4d1a-b46d-7d7d82222d78', N'1131117', N'11310', N'4763  ', 1415965, 1501614, 1241760, -5.7037959098815918, 14.028878211975098, 12596458, 8430627, 49.413063049316406, N'-', CAST(N'2024-11-18T16:30:33.343' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'dd168c41-fed4-487e-b644-7d9593777bf3', N'1131117', N'11310', N'4104  ', 762803, 741238, 679954, 2.9093220233917236, 12.184500694274902, 7023858, 6728401, 4.3911919593811035, N'-', CAST(N'2024-11-18T16:30:33.300' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b8ac7cda-65f9-4ba4-94f5-7dbebdf9283d', N'1131117', N'11310', N'6754  ', 453286, 451836, 453056, 0.32091289758682251, 0.050766352564096451, 4383897, 3599223, 21.801204681396484, N'-', CAST(N'2024-11-18T16:30:33.970' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8d32edc3-867c-4c0e-b41d-7dcffcb16bf1', N'1131117', N'11310', N'6949  ', 1403, 1742, 1664, -19.460390090942383, -15.68509578704834, 16396, 16310, 0.52728384733200073, N'-', CAST(N'2024-11-18T16:30:34.060' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'08ab8d79-d3bc-4789-a1fc-7e630182e382', N'1131117', N'11310', N'4532  ', 1774251, 1565303, 1224674, 13.348725318908691, 44.875370025634766, 17846068, 13669266, 30.556154251098633, N'-', CAST(N'2024-11-18T16:30:33.317' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'89e1982a-f1e8-4e0c-8ea6-7e8779530662', N'1131117', N'11310', N'1341  ', 271998, 206337, 227573, 31.822214126586914, 19.521207809448242, 2270119, 2107121, 7.7355785369873047, N'-', CAST(N'2024-11-18T16:30:31.747' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3c8c4271-8230-40c6-81de-7e8963aa2250', N'1131117', N'11310', N'4439  ', 417873, 413392, 312770, 1.0839591026306152, 33.603927612304688, 4732135, 4532337, 4.40827751159668, N'-', CAST(N'2024-11-18T16:30:33.313' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'6836cb9a-f181-4ac1-a8a4-7ed888702109', N'1131117', N'11310', N'3052  ', 160314, 190956, 185715, -16.046628952026367, -13.677409172058106, 2183173, 2630975, -17.020381927490234, N'-', CAST(N'2024-11-18T16:30:33.210' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'66d03ebe-c1fc-4032-967d-7f21993be4cc', N'1131117', N'11310', N'8261  ', 270450, 245631, 250290, 10.104180335998535, 8.054656982421875, 2401294, 2414337, -0.54023110866546631, N'-', CAST(N'2024-11-18T16:30:34.123' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b6cd5627-50a0-4b05-a2ca-7f8819a271a6', N'1131117', N'11310', N'2303  ', 21371110, 18942714, 19191382, 12.819684028625488, 11.357848167419434, 193287584, 186766104, 3.4917898178100586, N'-', CAST(N'2024-11-18T16:30:32.530' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8b870138-0ea9-4757-83fa-802c55599b03', N'1131117', N'11310', N'2228  ', 440640, 478609, 453675, -7.9331979751586914, -2.8732020854949951, 4261133, 4068751, 4.7282814979553223, N'-', CAST(N'2024-11-18T16:30:32.470' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9202a84e-9bf3-4250-a0e2-80617ef46880', N'1131117', N'11310', N'3563  ', 183770, 128915, 91046, 42.551292419433594, 101.84302520751953, 1109649, 1615876, -31.328332901000977, N'產業景氣復甦', CAST(N'2024-11-18T16:30:33.267' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'1e24c054-6201-4598-9dad-80d2e0bbbcee', N'1131117', N'11310', N'3504  ', 213473, 236830, 219043, -9.8623485565185547, -2.5428798198699951, 2105503, 2512363, -16.194314956665039, N'-', CAST(N'2024-11-18T16:30:33.257' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b751fc5d-c13d-4d51-88a5-80d48b598fb7', N'1131117', N'11310', N'1528  ', 399413, 342583, 365141, 16.588680267333984, 9.3859634399414062, 3108747, 3169177, -1.9068042039871216, N'-', CAST(N'2024-11-18T16:30:32.103' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8c1f80a3-608a-489b-9171-80f0b784c5db', N'1131117', N'11310', N'2723  ', 1576926, 1618674, 1633086, -2.5791480541229248, -3.4388880729675293, 15639835, 17023875, -8.1299934387207031, N'-', CAST(N'2024-11-18T16:30:33.077' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'67d33914-0c57-4a08-b00a-8111b2089e00', N'1131117', N'11310', N'3533  ', 2760646, 2777008, 2037293, -0.58919525146484375, 35.505596160888672, 24578070, 19969450, 23.078351974487305, N'-', CAST(N'2024-11-18T16:30:33.260' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f66f217d-fade-4337-afb3-81855d400df8', N'1131117', N'11310', N'2912  ', 28620789, 28721242, 26942620, -0.34975159168243408, 6.2286777496337891, 280413619, 262534628, 6.8101458549499512, N'-', CAST(N'2024-11-18T16:30:33.160' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f9a1e67a-7ce5-4d47-8733-818e7e211665', N'1131117', N'11310', N'1203  ', 537494, 467801, 504360, 14.898001670837402, 6.56951379776001, 5055957, 5223257, -3.2029824256896973, N'-', CAST(N'2024-11-18T16:30:31.187' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ec2b805b-784c-41c2-a83f-81b86a708a01', N'1131117', N'11310', N'2838  ', 1269737, 1581608, 1285305, -19.718603134155273, -1.2112300395965576, 16314567, 14585988, 11.850955963134766, N'-', CAST(N'2024-11-18T16:30:33.107' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'5d34987c-2040-4fb5-bfec-81bf40c2bf37', N'1131117', N'11310', N'1210  ', 8604252, 8614876, 8992288, -0.12332156300544739, -4.315208911895752, 85439292, 92145772, -7.2781200408935547, N'-', CAST(N'2024-11-18T16:30:31.200' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c70df982-da19-47ed-9599-82279f9a94ff', N'1131117', N'11310', N'6834  ', 91963, 105126, 72745, -12.521164894104004, 26.418310165405273, 1028597, 793660, 29.601718902587891, N'-', CAST(N'2024-11-18T16:30:34.013' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'021a283f-fa51-44fe-9d85-822eb9f91b6e', N'1131117', N'11310', N'8926  ', 757593, 701063, 322067, 8.0634689331054688, 135.22837829589844, 7305698, 4204339, 73.765670776367188, N'係子公司星能(股)依工程進度認列收入較去年同期增加。', CAST(N'2024-11-18T16:30:34.160' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3c9e908f-c897-4132-9830-8238346c4f3f', N'1131117', N'11310', N'6278  ', 3737811, 3564916, 4199842, 4.8499040603637695, -11.001152038574219, 37178076, 38539179, -3.5317385196685791, N'-', CAST(N'2024-11-18T16:30:33.777' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'63ad2f62-d5c8-4154-9b43-826fffbef32b', N'1131117', N'11310', N'6691  ', 1390233, 1563772, 1008219, -11.097461700439453, 37.889984130859375, 11343151, 13301261, -14.721236228942871, N'-', CAST(N'2024-11-18T16:30:33.953' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'da3d5288-791c-48e9-894f-827c79b2ca65', N'1131117', N'11310', N'1468  ', 91748, 80796, 69010, 13.555126190185547, 32.948848724365234, 931995, 862529, 8.05375862121582, N'-', CAST(N'2024-11-18T16:30:32.003' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'0f12b52e-99b6-4476-a184-829c000f08d1', N'1131117', N'11310', N'2332  ', 1116216, 1257999, 1290469, -11.270517349243164, -13.50307559967041, 12080262, 13522044, -10.662456512451172, N'-', CAST(N'2024-11-18T16:30:32.643' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'6e73dd56-1d40-46de-aaf1-82d18a8e4e65', N'1131117', N'11310', N'3168  ', 255202, 326163, 249704, -21.75629997253418, 2.2018070220947266, 2878667, 3384985, -14.957761764526367, N'-', CAST(N'2024-11-18T16:30:33.227' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'6d357b49-5491-43be-aeee-82f4f87d78da', N'1131117', N'11310', N'4142  ', 479993, 340997, 500691, 40.761650085449219, -4.1338868141174316, 1491913, 1726295, -13.577169418334961, N'-', CAST(N'2024-11-18T16:30:33.307' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b5d63fcf-9ae7-427c-a128-830ba2e702bb', N'1131117', N'11310', N'2607  ', 1679144, 2039698, 1680794, -17.67683219909668, -0.098167888820171356, 17843240, 13331270, 33.845012664794922, N'-', CAST(N'2024-11-18T16:30:33.023' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'a475d398-463e-48d5-98ec-83259d55d953', N'1131117', N'11310', N'3545  ', 1422489, 1420436, 1227817, 0.14453308284282684, 15.855131149291992, 11773411, 11163854, 5.4600949287414551, N'-', CAST(N'2024-11-18T16:30:33.267' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'13ae7345-c2a5-4197-ac63-83793aca9af1', N'1131117', N'11310', N'2911  ', 284036, 208783, 302407, 36.043643951416016, -6.074925422668457, 2291629, 2511191, -8.7433414459228516, N'-', CAST(N'2024-11-18T16:30:33.160' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b8234706-202f-4fee-89f8-839488c714ad', N'1131117', N'11310', N'2369  ', 424946, 440155, 505531, -3.4553737640380859, -15.940664291381836, 4521231, 4705579, -3.91764760017395, N'-', CAST(N'2024-11-18T16:30:32.727' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'a98f876a-6b4b-418d-83e0-8399499e5ba3', N'1131117', N'11310', N'3130  ', 214105, 214498, 198921, -0.18321849405765533, 7.633181095123291, 2093722, 1958623, 6.8976521492004395, N'-', CAST(N'2024-11-18T16:30:33.223' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'284151c3-b9ae-4868-943e-83af65c0f029', N'1131117', N'11310', N'1457  ', 255185, 300639, 297085, -15.119129180908203, -14.103707313537598, 2812796, 2598080, 8.2644109725952148, N'-', CAST(N'2024-11-18T16:30:31.970' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'55d3ac26-d306-4020-8dc0-83cac0f0b570', N'1131117', N'11310', N'1535  ', 771880, 919570, 845468, -16.060768127441406, -8.7038183212280273, 8586880, 7546394, 13.787857055664063, N'-', CAST(N'2024-11-18T16:30:32.120' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'630e743e-5a5f-4c0d-9579-83f6b25a90fd', N'1131117', N'11310', N'1471  ', 29773, 24269, 18841, 22.67913818359375, 58.022396087646484, 233490, 206654, 12.985957145690918, N'本月營收較去年同期增加，主係因為客戶需求增加所致。', CAST(N'2024-11-18T16:30:32.010' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'18c16e7d-951e-4ed3-82c3-8422d79ac00c', N'1131117', N'11310', N'1303  ', 22758378, 21428221, 21722488, 6.20750093460083, 4.768744945526123, 214217930, 218485874, -1.9534187316894531, N'-', CAST(N'2024-11-18T16:30:31.523' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ebfd3233-e136-4400-aa2a-847657f5f38a', N'1131117', N'11310', N'2233  ', 295813, 309600, 274890, -4.4531655311584473, 7.6114082336425781, 3064971, 2747520, 11.554092407226563, N'-', CAST(N'2024-11-18T16:30:32.477' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b013d1a7-924d-43c0-9747-848110f3d8a4', N'1131117', N'11310', N'2636  ', 2138894, 2341102, 1331130, -8.6372995376586914, 60.682579040527344, 21257136, 11942197, 78.000213623046875, N'運價與貨量較去年同期增加所致', CAST(N'2024-11-18T16:30:33.050' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f7012907-f740-41e3-9490-84a0fd81d93d', N'1131117', N'11310', N'2430  ', 1565293, 1617732, 1594189, -3.24151349067688, -1.8125830888748169, 15936649, 16853076, -5.4377431869506836, N'-', CAST(N'2024-11-18T16:30:32.820' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b219f1eb-8abd-463f-b598-84c6a3f77160', N'1131117', N'11310', N'4934  ', 6541, 12139, 67493, -46.115825653076172, -90.308624267578125, 349224, 2058094, -83.03167724609375, N'本月營收較去年同月減少，主係市場需求減緩所致。', CAST(N'2024-11-18T16:30:33.353' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9980fca1-2161-4e77-92ff-84de80e6c003', N'1131117', N'11310', N'6442  ', 587739, 561522, 231218, 4.6689176559448242, 154.19258117675781, 4497153, 2228574, 101.79509735107422, N'市場需求增加', CAST(N'2024-11-18T16:30:33.853' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'0c2c6d2c-b967-4ec7-94d9-84f8d1fdf0ab', N'1131117', N'11310', N'8162  ', 104533, 93977, 98094, 11.232535362243652, 6.5641121864318848, 873240, 718650, 21.511167526245117, N'-', CAST(N'2024-11-18T16:30:34.110' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'bfbe7c54-f19f-4a7a-a00d-854e0670a11e', N'1131117', N'11310', N'3048  ', 12074150, 11284894, 12037434, 6.9939160346984863, 0.30501517653465271, 92065598, 87185865, 5.5969314575195312, N'上述已依IFRS申報合併營收', CAST(N'2024-11-18T16:30:33.207' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'6efbc5e9-77d0-4d48-8e83-856dd77dd6c4', N'1131117', N'11310', N'6282  ', 2361808, 3195689, 2409070, -26.093935012817383, -1.9618358612060547, 25943477, 22265356, 16.519479751586914, N'-', CAST(N'2024-11-18T16:30:33.787' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7334bddd-99f5-4df4-935d-861f9ac97930', N'1131117', N'11310', N'8072  ', 76473, 96249, 125036, -20.546707153320312, -38.839214324951172, 779035, 1005379, -22.513301849365234, N'-', CAST(N'2024-11-18T16:30:34.090' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7c4d1627-c266-4d0d-98e7-86d6c1189e8c', N'1131117', N'11310', N'3002  ', 36871, 40163, 40621, -8.196599006652832, -9.2316780090332031, 502921, 515181, -2.3797461986541748, N'-', CAST(N'2024-11-18T16:30:33.167' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'049c2566-107c-415c-ae83-870ac67fd372', N'1131117', N'11310', N'1416  ', 26833, 28518, 24959, -5.9085488319396973, 7.5083136558532715, 265834, 237213, 12.06552791595459, N'-', CAST(N'2024-11-18T16:30:31.773' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ebee2280-3f30-4b59-88d7-87298e748fb4', N'1131117', N'11310', N'6116  ', 1030378, 983993, 1043028, 4.713956356048584, -1.2128150463104248, 8130716, 10398575, -21.809324264526367, N'-', CAST(N'2024-11-18T16:30:33.407' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'2f5ea822-6c1f-40a2-aa78-874b24e86578', N'1131117', N'11310', N'2385  ', 9287911, 9653109, 8238719, -3.7832164764404297, 12.734892845153809, 84528803, 82132319, 2.9178330898284912, N'-', CAST(N'2024-11-18T16:30:32.750' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'41ac29d8-7c7a-4aee-a5dd-87bcea65f0cb', N'1131117', N'11310', N'9902  ', 12855, 2394, 19410, 436.9674072265625, -33.7712516784668, 185099, 123153, 50.300033569335938, N'本月累計營收較去年同期增加主要係本期二月有銷售鋼構建材收入所致', CAST(N'2024-11-18T16:30:34.170' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'09a18b5d-6112-4259-86bc-87dcc33bfc54', N'1131117', N'11310', N'1810  ', 416023, 373897, 381718, 11.266738891601563, 8.9870004653930664, 3969595, 3984109, -0.36429727077484131, N'-', CAST(N'2024-11-18T16:30:32.333' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9b01c685-b131-483f-bc4e-8813158c3682', N'1131117', N'11310', N'3058  ', 253432, 261239, 319867, -2.9884512424468994, -20.769569396972656, 2630184, 3145629, -16.386070251464844, N'-', CAST(N'2024-11-18T16:30:33.217' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'e40bd4b7-85a1-4751-9ff6-893cea34ceee', N'1131117', N'11310', N'8011  ', 148465, 160811, 205775, -7.6773357391357422, -27.850807189941406, 2151561, 1559540, 37.961257934570312, N'-', CAST(N'2024-11-18T16:30:34.073' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'e4386332-e264-45ec-bbe9-8a5c5dedb9a6', N'1131117', N'11310', N'3432  ', 5298, 3987, 1183, 32.881866455078125, 347.84445190429688, 37257, 14711, 153.25946044921875, N'主係因增加新產品出貨所致', CAST(N'2024-11-18T16:30:33.247' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'a5ec46eb-0341-44cb-bf33-8a8e81727e95', N'1131117', N'11310', N'2308  ', 38816849, 37094029, 34675178, 4.6444673538208008, 11.944195747375488, 345761923, 335881249, 2.9417164325714111, N'-', CAST(N'2024-11-18T16:30:32.540' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'edfaf1f3-3410-4143-b78d-8a97ec15cade', N'1131117', N'11310', N'1472  ', 156230, 203874, 177308, -23.369335174560547, -11.887788772583008, 1813942, 1515563, 19.687667846679688, N'本公司以專案收入為主要營收，因各財務報表期間所認列專案別不同，使得營業收入同期比較不具相同基礎，此為本公司營業特性', CAST(N'2024-11-18T16:30:32.010' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'73ff91f0-e8de-4bfe-a2e8-8ad158d706e0', N'1131117', N'11310', N'4557  ', 391519, 372506, 275530, 5.1040787696838379, 42.096687316894531, 3142305, 2616320, 20.104000091552734, N'-', CAST(N'2024-11-18T16:30:33.323' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3657c458-776b-417d-a099-8b5eaffcf442', N'1131117', N'11310', N'1710  ', 1497476, 2072475, 1524085, -27.744556427001953, -1.74590003490448, 19683559, 17255201, 14.07319450378418, N'無', CAST(N'2024-11-18T16:30:32.230' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7f1001f4-f0f8-41b9-84a9-8b7b0ddab518', N'1131117', N'11310', N'1236  ', 133509, 182447, 125408, -26.823131561279297, 6.4597153663635254, 1554434, 1546837, 0.4911312460899353, N'-', CAST(N'2024-11-18T16:30:31.450' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'745f09a1-0ee2-43ef-9102-8bb863776399', N'1131117', N'11310', N'4927  ', 1011854, 987417, 1019484, 2.4748408794403076, -0.748417854309082, 10390340, 10562588, -1.6307367086410523, N'10月份自結數', CAST(N'2024-11-18T16:30:33.353' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'deea27f7-aef9-43a7-bb22-8bd7394f76b4', N'1131117', N'11310', N'2029  ', 977190, 1066034, 1122817, -8.3340682983398438, -12.969789505004883, 10943959, 10055585, 8.8346328735351562, N'-', CAST(N'2024-11-18T16:30:32.393' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f4a5e343-fccf-45bd-a6a3-8c68b43ddde7', N'1131117', N'11310', N'5306  ', 365999, 442098, 354450, -17.213151931762695, 3.2582874298095703, 4187717, 4038347, 3.6987905502319336, N'-', CAST(N'2024-11-18T16:30:33.383' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b5f0aa8f-f828-4b36-8061-8cb0c1215618', N'1131117', N'11310', N'1227  ', 2080184, 2895023, 2027434, -28.146202087402344, 2.6018109321594238, 22867483, 22157069, 3.206263542175293, N'-', CAST(N'2024-11-18T16:30:31.347' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'86be2ee5-c2f7-4a0a-a400-8cbbea86afab', N'1131117', N'11310', N'6863  ', 371791, 444595, 273991, -16.37535285949707, 35.694602966308594, 3592865, 2089604, 71.939994812011719, N'主係現有客戶訂單提升，出貨數量增加，較去年同期增加。', CAST(N'2024-11-18T16:30:34.030' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f6cabe44-1b62-4205-8e71-8d0a2c267dcc', N'1131117', N'11310', N'3593  ', 86860, 78313, 83183, 10.913896560668945, 4.4203743934631348, 709266, 733640, -3.3223378658294678, N'-', CAST(N'2024-11-18T16:30:33.273' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ed01b1ba-9b2e-4067-9874-8d21a2543808', N'1131117', N'11310', N'2062  ', 552935, 572307, 660450, -3.3848965167999268, -16.279052734375, 6395388, 6103400, 4.7840218544006348, N'-', CAST(N'2024-11-18T16:30:32.413' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f697132c-f0b8-4713-87dd-8d302618611a', N'1131117', N'11310', N'3622  ', 118674, 127930, 83557, -7.2352066040039062, 42.0275993347168, 1414003, 1297620, 8.968958854675293, N'-', CAST(N'2024-11-18T16:30:33.280' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'430f4041-7a78-492a-969b-8d379019a12f', N'1131117', N'11310', N'2601  ', 438017, 354116, 493252, 23.693082809448242, -11.198129653930664, 4038337, 4597344, -12.159346580505371, N'-', CAST(N'2024-11-18T16:30:33.013' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3ad0a3af-8b23-4e79-bc4f-8d4bf74b4304', N'1131117', N'11310', N'6153  ', 566665, 675817, 825520, -16.1511173248291, -31.356599807739258, 6201040, 8409946, -26.265399932861328, N'-', CAST(N'2024-11-18T16:30:33.437' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7e11c58b-3158-4652-9c2c-8da7986cb6b1', N'1131117', N'11310', N'2426  ', 187153, 204004, 189809, -8.2601318359375, -1.3993014097213745, 2024299, 1868474, 8.3396930694580078, N'咸瑞公司自113/2起非合併財務報表之子公司，不再納計合併營收。', CAST(N'2024-11-18T16:30:32.810' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'2ea7b067-92a9-4a88-9c28-8ddaea9314ca', N'1131117', N'11310', N'2480  ', 725021, 625350, 723077, 15.938434600830078, 0.26885104179382324, 6027904, 6022504, 0.089663699269294739, N'-', CAST(N'2024-11-18T16:30:32.903' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'653f2d05-5c69-4589-b340-8dfc5aab9767', N'1131117', N'11310', N'3708  ', 765012, 661836, 657097, 15.589360237121582, 16.422994613647461, 6534440, 5996619, 8.9687376022338867, N'-', CAST(N'2024-11-18T16:30:33.290' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'44ac93b2-9153-4773-8b65-8e167db2b74f', N'1131117', N'11310', N'9924  ', 637863, 554996, 859448, 14.931098937988281, -25.782245635986328, 6739942, 7411832, -9.06510066986084, N'-', CAST(N'2024-11-18T16:30:34.190' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'6f9d8509-d4c5-4555-afd6-8e3967e81d2c', N'1131117', N'11310', N'1340  ', 29151, 30893, 59538, -5.63881778717041, -51.037994384765625, 317478, 490939, -35.332496643066406, N'營收下滑幅度較大，主要係因公司在7月份進行營運調整，並處分單色生產車間，以減少運營成本所致。', CAST(N'2024-11-18T16:30:31.743' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'5800969c-e4a8-4a31-a0b4-8fc2cfce7872', N'1131117', N'11310', N'3665  ', 4911147, 4589632, 4486505, 7.0052456855773926, 9.4648733139038086, 44526059, 43271943, 2.8982198238372803, N'-', CAST(N'2024-11-18T16:30:33.280' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'24af3960-7ae4-4b2d-be94-90a291773b6f', N'1131117', N'11310', N'1441  ', 176433, 121556, 133170, 45.14544677734375, 32.487045288085938, 1358758, 1007536, 34.8594970703125, N'-', CAST(N'2024-11-18T16:30:31.913' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ac87948f-2353-4875-a6cc-90a40057a676', N'1131117', N'11310', N'9921  ', 4871062, 6028419, 5211668, -19.19835090637207, -6.5354509353637695, 62557349, 67310526, -7.06156587600708, N'-', CAST(N'2024-11-18T16:30:34.187' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f6470e42-8646-4840-8b26-9125197e12bd', N'1131117', N'11310', N'6923  ', 94656, 135329, 105702, -30.054903030395508, -10.450133323669434, 1495659, 927458, 61.264339447021484, N'本年度較去年度增加，主要係延續112年度中新增之環境工程業務，依工程進度認列收入較多所致。', CAST(N'2024-11-18T16:30:34.050' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7789999b-0454-4f40-8a8b-914be5b07148', N'1131117', N'11310', N'2032  ', 285625, 238649, 221107, 19.684139251708984, 29.179536819458008, 2424066, 2362554, 2.6036229133605957, N'-', CAST(N'2024-11-18T16:30:32.400' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8b286cda-ed61-4247-a912-9159204d480f', N'1131117', N'11310', N'2241  ', 53247, 53707, 93337, -0.85649913549423218, -42.951885223388672, 576613, 722666, -20.210304260253906, N'-', CAST(N'2024-11-18T16:30:32.490' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'67f8368b-082f-4f11-a76b-916243a00d69', N'1131117', N'11310', N'1506  ', 84045, 91268, 94325, -7.914055347442627, -10.898488998413086, 850061, 947600, -10.293267250061035, N'-', CAST(N'2024-11-18T16:30:32.060' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'96f6b5b3-b867-4c43-9451-91656c8575ef', N'1131117', N'11310', N'4912  ', 418623, 507825, 404568, -17.565500259399414, 3.47407603263855, 4685466, 3862869, 21.294975280761719, N'-', CAST(N'2024-11-18T16:30:33.350' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'049b119f-b26e-46b3-8f15-918ad5ea60cb', N'1131117', N'11310', N'4736  ', 394852, 441740, 388000, -10.614388465881348, 1.7659794092178345, 3868583, 4116464, -6.0216970443725586, N'-', CAST(N'2024-11-18T16:30:33.340' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'2b0eba06-6d44-463b-b170-919469650339', N'1131117', N'11310', N'3702  ', 74834650, 105674770, 62665743, -29.183996200561523, 19.418754577636719, 723780081, 551463309, 31.2471866607666, N'-', CAST(N'2024-11-18T16:30:33.287' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'2fc51e2d-bd24-4bcf-b3c5-919a2a9f8404', N'1131117', N'11310', N'2615  ', 13779122, 14965985, 8170544, -7.9304037094116211, 68.643875122070312, 134052204, 83246162, 61.031093597412109, N'運價較去年同期上漲', CAST(N'2024-11-18T16:30:33.037' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ebc16fa4-e8ee-44c7-8fc9-91a0ed662f67', N'1131117', N'11310', N'2612  ', 417788, 381290, 349787, 9.57224178314209, 19.440689086914062, 3786931, 3311207, 14.367087364196777, N'-', CAST(N'2024-11-18T16:30:33.033' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c3054962-954d-4001-aa45-91f9580404a4', N'1131117', N'11310', N'2646  ', 3098123, 2818695, 2087041, 9.9133815765380859, 48.445716857910156, 29025342, 18042571, 60.871429443359375, N'客運營收穩定成長。', CAST(N'2024-11-18T16:30:33.057' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7ab01f0e-0411-4856-8174-9272e26c5b80', N'1131117', N'11310', N'2467  ', 371439, 333203, 271078, 11.475286483764648, 37.022922515869141, 3854369, 2871475, 34.229587554931641, N'-', CAST(N'2024-11-18T16:30:32.880' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'86bcf7c2-feeb-46a4-a3a6-92ec7be667c5', N'1131117', N'11310', N'1714  ', 2019941, 1725230, 1800851, 17.082418441772461, 12.165914535522461, 16503072, 16780316, -1.6521977186203003, N'-', CAST(N'2024-11-18T16:30:32.240' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3754d6fc-6d10-42b3-aceb-931d01d5ba20', N'1131117', N'11310', N'2849  ', 416345, 516176, 472769, -19.340496063232422, -11.934792518615723, 4634871, 4937772, -6.1343660354614258, N'-', CAST(N'2024-11-18T16:30:33.110' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f945cb58-b5f2-4e70-a491-93753873fe38', N'1131117', N'11310', N'1732  ', 44708, 48823, 41821, -8.4284048080444336, 6.9032306671142578, 489730, 459784, 6.5130581855773926, N'-', CAST(N'2024-11-18T16:30:32.280' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ffa71d26-2e61-41b0-a3db-937f290c2547', N'1131117', N'11310', N'2495  ', 100628, 82521, 133515, 21.942293167114258, -24.631689071655273, 1076256, 1170315, -8.0370674133300781, N'-', CAST(N'2024-11-18T16:30:32.927' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'a5453c82-a569-4c29-8c90-937fc83069b3', N'1131117', N'11310', N'9926  ', 171754, 173192, 183821, -0.83029240369796753, -6.5645384788513184, 1941435, 1904865, 1.9198211431503296, N'-', CAST(N'2024-11-18T16:30:34.190' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'113e3512-cd6c-4aee-acca-938a4d45e804', N'1131117', N'11310', N'2424  ', 7394, 10379, 3827, -28.75999641418457, 93.206169128417969, 78658, 66703, 17.922731399536133, N'本月增加因銷售監控系統軟硬體增加。', CAST(N'2024-11-18T16:30:32.803' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'bddcde2e-2d72-43f9-99d5-93d5078fcba5', N'1131117', N'11310', N'2906  ', 739700, 549761, 703185, 34.54937744140625, 5.1928014755249023, 7317477, 6494968, 12.663788795471191, N'-', CAST(N'2024-11-18T16:30:33.153' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8eee60ea-c438-47c4-9d88-93f097404b55', N'1131117', N'11310', N'6838  ', 3488, 4333, 0, -19.501499176025391, NULL, 140949, 31172, 352.1654052734375, N'APP13007銷貨收入', CAST(N'2024-11-18T16:30:34.020' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f09b2326-a8ab-4f93-930a-944f8a878795', N'1131117', N'11310', N'1541  ', 221803, 216247, 395570, 2.569284200668335, -43.928256988525391, 2471293, 2683682, -7.9140896797180176, N'-', CAST(N'2024-11-18T16:30:32.137' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'52afd09e-2909-4688-b1fb-94789e28d7e5', N'1131117', N'11310', N'6670  ', 2510690, 2333930, 2060900, 7.5734920501708984, 21.824930191040039, 22052538, 19447578, 13.394778251647949, N'-', CAST(N'2024-11-18T16:30:33.947' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'35b2c780-ed73-4677-83ed-94825d823b5f', N'1131117', N'11310', N'3019  ', 2063567, 2185365, 1554174, -5.5733480453491211, 32.775802612304688, 18793971, 14555534, 29.119075775146484, N'-', CAST(N'2024-11-18T16:30:33.177' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b2c3d449-5dd2-49a5-af35-954eb90bab17', N'1131117', N'11310', N'1314  ', 2138574, 2068523, 2237466, 3.3865227699279785, -4.4198212623596191, 26148646, 21277065, 22.895925521850586, N'-', CAST(N'2024-11-18T16:30:31.610' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f571a58c-b1f2-4ab0-a6ae-9590ce87ce86', N'1131117', N'11310', N'6581  ', 260998, 224052, 266332, 16.489921569824219, -2.0027635097503662, 1923096, 1651639, 16.435613632202148, N'-', CAST(N'2024-11-18T16:30:33.913' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c02a038d-6166-4a4a-b4a0-95a6bb2312d8', N'1131117', N'11310', N'1721  ', 159047, 231382, 163755, -31.262155532836914, -2.8750267028808594, 1955273, 1761446, 11.003856658935547, N'-', CAST(N'2024-11-18T16:30:32.253' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f6159512-10d6-4e91-ba22-95d07735779b', N'1131117', N'11310', N'6776  ', 2532504, 2368325, 2064600, 6.9322834014892578, 22.663179397583008, 20650597, 18860013, 9.4940757751464844, N'-', CAST(N'2024-11-18T16:30:33.987' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9de5c7f4-bd84-46bc-9b5c-95feaad0633c', N'1131117', N'11310', N'5007  ', 491025, 552692, 569335, -11.157570838928223, -13.754643440246582, 5765940, 5486213, 5.098726749420166, N'-', CAST(N'2024-11-18T16:30:33.370' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ca4374e4-9e73-4b51-822f-961fb38517fb', N'1131117', N'11310', N'2030  ', 901129, 931929, 1007165, -3.3049728870391846, -10.528165817260742, 10304416, 10867023, -5.1771950721740723, N'-', CAST(N'2024-11-18T16:30:32.397' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'09691e52-9f5c-4839-996c-963b177e8f8d', N'1131117', N'11310', N'6988  ', 74955, 73257, 53054, 2.3178672790527344, 41.280582427978516, 751361, 702140, 7.0101404190063477, N'-', CAST(N'2024-11-18T16:30:34.070' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'78789b47-05a5-4a68-b9e2-969a21506d2d', N'1131117', N'11310', N'2885  ', 10069782, 9380551, 6299530, 7.3474469184875488, 59.849735260009766, 100066343, 84121997, 18.953836441040039, N'本月營業收入淨額較去年同期增加，主係透過損益按公允價值衡量之金融資產及負債利益增加所致。', CAST(N'2024-11-18T16:30:33.130' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'daef5491-b9f8-437a-ab45-96b90d05c9a0', N'1131117', N'11310', N'3050  ', 98667, 112195, 87230, -12.057578086853027, 13.11131477355957, 1042269, 958743, 8.7120323181152344, N'-', CAST(N'2024-11-18T16:30:33.210' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd721ba4f-719a-4d45-a0cb-96e783984162', N'1131117', N'11310', N'6792  ', 103587, 98894, 119197, 4.7454848289489746, -13.095967292785645, 1043565, 1203716, -13.304716110229492, N'-', CAST(N'2024-11-18T16:30:34.000' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ad26dd14-6ff4-404a-947e-970f2ba422fd', N'1131117', N'11310', N'4720  ', 336425, 304287, 291734, 10.561738967895508, 15.319091796875, 3035795, 2727490, 11.303616523742676, N'-', CAST(N'2024-11-18T16:30:33.337' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'690032ae-628b-48ef-b834-976b101ab4fc', N'1131117', N'11310', N'2820  ', 175690, 172286, 103835, 1.9757844209671021, 69.201133728027344, 1920771, 1775851, 8.1605949401855469, N'主係本年交易股票及債券賣斷獲利較高', CAST(N'2024-11-18T16:30:33.100' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3c8382d9-0d53-4cd1-be07-979c30f4cf6c', N'1131117', N'11310', N'4571  ', 258420, 215533, 175355, 19.898113250732422, 47.369621276855469, 2491205, 1913436, 30.195365905761719, N'-', CAST(N'2024-11-18T16:30:33.330' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'1096ba67-d387-4e4b-9879-97bc3d27a085', N'1131117', N'11310', N'9941  ', 3318128, 3415574, 3556563, -2.8529903888702393, -6.7040848731994629, 34763085, 34431181, 0.96396344900131226, N'-', CAST(N'2024-11-18T16:30:34.200' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'75067886-f50b-4330-a80a-97df697325bc', N'1131117', N'11310', N'3715  ', 1407088, 1589090, 1389986, -11.453221321105957, 1.2303720712661743, 14556786, 12955446, 12.360362052917481, N'-', CAST(N'2024-11-18T16:30:33.297' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f3d8f11d-90a9-44a6-aa94-97e95609bdee', N'1131117', N'11310', N'6902  ', 70981, 84107, 66821, -15.606310844421387, 6.2255878448486328, 690345, 625364, 10.390908241271973, N'-', CAST(N'2024-11-18T16:30:34.040' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8bc94df3-6dc6-4a1b-829f-97f49a0b3f17', N'1131117', N'11310', N'6719  ', 331517, 337358, 249858, -1.7313951253890991, 32.682163238525391, 3094097, 2481410, 24.691082000732422, N'-', CAST(N'2024-11-18T16:30:33.963' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'bcc9e79e-fc7f-445b-985c-98724ec6b434', N'1131117', N'11310', N'5876  ', 4431406, 3517947, 3863725, 25.96568489074707, 14.692583084106445, 43710461, 42089710, 3.8507061004638672, N'-', CAST(N'2024-11-18T16:30:33.400' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'09e591a1-b673-4790-a1c5-988ad234c699', N'1131117', N'11310', N'3311  ', 206771, 224747, 177655, -7.9983267784118652, 16.389068603515625, 1981978, 1718352, 15.341793060302734, N'-', CAST(N'2024-11-18T16:30:33.233' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'0c1ad95a-3f70-411b-a584-989e122e1d8e', N'1131117', N'11310', N'1233  ', 161317, 183712, 175783, -12.190276145935059, -8.2294645309448242, 1812093, 1746182, 3.7745778560638428, N'-', CAST(N'2024-11-18T16:30:31.397' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3919aa3d-3d78-4f56-8ee1-9a25d1adc457', N'1131117', N'11310', N'2427  ', 407234, 527869, 274909, -22.853208541870117, 48.134109497070312, 3782115, 2953216, 28.067672729492188, N'-', CAST(N'2024-11-18T16:30:32.810' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'841ced3c-0f85-4af1-b499-9a44109d3d31', N'1131117', N'11310', N'2466  ', 93171, 54195, 45496, 71.918075561523438, 104.7894287109375, 984364, 965788, 1.9234035015106201, N'主係因燈飾營收較去年同期增加', CAST(N'2024-11-18T16:30:32.880' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'53d5ee5c-1571-4431-8acf-9a530412ffc6', N'1131117', N'11310', N'2321  ', 55932, 50910, 70351, 9.864466667175293, -20.495800018310547, 521193, 651044, -19.945041656494141, N'-', CAST(N'2024-11-18T16:30:32.587' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'2cbaf6ca-13cc-4ca8-9514-9a6217be5709', N'1131117', N'11310', N'6756  ', 119518, 141317, 169502, -15.425603866577148, -29.488737106323242, 1452968, 1692945, -14.175121307373047, N'-', CAST(N'2024-11-18T16:30:33.973' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd823c2a2-9b84-451d-882c-9aa065482da2', N'1131117', N'11310', N'2328  ', 1864623, 1975658, 1972374, -5.6201529502868652, -5.4630107879638672, 17987087, 21139624, -14.912928581237793, N'-', CAST(N'2024-11-18T16:30:32.613' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd61da515-2868-4156-a2cc-9ae9579a9383', N'1131117', N'11310', N'1218  ', 833404, 985528, 893674, -15.435786247253418, -6.7440700531005859, 9111426, 9479640, -3.8842613697052, N'-', CAST(N'2024-11-18T16:30:31.290' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'38396829-96ed-4d69-b62f-9bc07d54ff97', N'1131117', N'11310', N'1526  ', 46919, 61627, 56934, -23.86616325378418, -17.590543746948242, 590817, 909259, -35.022144317626953, N'-', CAST(N'2024-11-18T16:30:32.100' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7c62bd5a-bb35-41ab-ae94-9c3315c7b0ac', N'1131117', N'11310', N'9943  ', 221991, 202691, 224367, 9.5218830108642578, -1.0589792728424072, 2178674, 2342939, -7.01106595993042, N'-', CAST(N'2024-11-18T16:30:34.203' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'fab73a08-a1dd-4308-ace6-9c41ea5e403b', N'1131117', N'11310', N'3022  ', 509230, 578569, 582828, -11.984568595886231, -12.627738952636719, 5711855, 6509574, -12.254549980163574, N'-', CAST(N'2024-11-18T16:30:33.180' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f3c0a525-14b6-4e9d-be5a-9ccd1cb83622', N'1131117', N'11310', N'2337  ', 2135343, 2652966, 2166105, -19.511106491088867, -1.4201527833938599, 22105918, 23981938, -7.82263708114624, N'-', CAST(N'2024-11-18T16:30:32.647' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'160e1664-1587-4854-b5a1-9ced1c734570', N'1131117', N'11310', N'2022  ', 655976, 689236, 759000, -4.8256330490112305, -13.573649406433106, 6554984, 7364724, -10.994845390319824, N'-', CAST(N'2024-11-18T16:30:32.380' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'76ad9083-b0ab-4c9d-bdfe-9cf55838f6e3', N'1131117', N'11310', N'6189  ', 2932293, 2930003, 2547022, 0.078156918287277222, 15.12633228302002, 32783071, 24570968, 33.421974182128906, N'-', CAST(N'2024-11-18T16:30:33.650' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ac2a2005-42f2-484a-ab19-9d1c68a94207', N'1131117', N'11310', N'1313  ', 5332007, 5094421, 6323633, 4.6636505126953125, -15.681270599365234, 60564927, 59831110, 1.2264807224273682, N'-', CAST(N'2024-11-18T16:30:31.587' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b51a9c8f-2a24-4e14-a995-9d6d8edd1fad', N'1131117', N'11310', N'6890  ', 3590049, 2516805, 3022794, 42.643112182617188, 18.76591682434082, 30428288, 22838295, 33.233623504638672, N'-', CAST(N'2024-11-18T16:30:34.037' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'1d88b3ef-4cfb-45c1-a6f9-9d816fc2a2af', N'1131117', N'11310', N'1904  ', 3625130, 5159848, 3798596, -29.743473052978516, -4.566582202911377, 36928985, 34683100, 6.4754447937011719, N'-', CAST(N'2024-11-18T16:30:32.340' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'694b71b8-6667-44fa-b8b6-9da366fd6f9f', N'1131117', N'11310', N'6958  ', 970367, 1020597, 950541, -4.9216294288635254, 2.0857596397399902, 9757178, 8717211, 11.93004322052002, N'-', CAST(N'2024-11-18T16:30:34.070' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'5576eada-394d-4721-93bc-9db300cda576', N'1131117', N'11310', N'5538  ', 1071369, 1137063, 922297, -5.7775163650512695, 16.163124084472656, 10220934, 10954590, -6.6972475051879883, N'-', CAST(N'2024-11-18T16:30:33.397' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'4af23846-61be-47c1-a753-9de14f14c9c0', N'1131117', N'11310', N'6443  ', 250474, 408906, 620648, -38.745334625244141, -59.643146514892578, 4013206, 7026096, -42.881423950195312, N'月營收相較同期減少主要為市場以及天候颱風導致下游工程延宕所致', CAST(N'2024-11-18T16:30:33.857' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'abf6cbe2-1fee-4010-854d-9de62348bdae', N'1131117', N'11310', N'2404  ', 4001232, 3586435, 5895855, 11.565719604492188, -32.134830474853516, 38780214, 56633592, -31.524360656738281, N'-', CAST(N'2024-11-18T16:30:32.773' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'0bb7e336-8dfc-4739-bcf7-9ec34786996c', N'1131117', N'11310', N'5546  ', 205981, 181267, 300528, 13.634031295776367, -31.460296630859375, 2289844, 3091007, -25.919158935546875, N'-', CAST(N'2024-11-18T16:30:33.397' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'eae86c47-f25d-4c1b-af24-9ef5dca25f93', N'1131117', N'11310', N'4938  ', 118801102, 109264099, 142204362, 8.7283954620361328, -16.457483291625977, 917145784, 1056818276, -13.216320991516113, N'-', CAST(N'2024-11-18T16:30:33.353' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'00670045-7df0-44c9-aab8-9f06f7f55a78', N'1131117', N'11310', N'6288  ', 460069, 500768, 388175, -8.12731647491455, 18.521028518676758, 4664859, 3597056, 29.685470581054688, N'-', CAST(N'2024-11-18T16:30:33.800' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f0e0630f-1d98-496d-8613-9f21918fc6bf', N'1131117', N'11310', N'2501  ', 1082091, 1081604, 636342, 0.045025721192359924, 70.048652648925781, 15569078, 10081591, 54.430763244628906, N'本年交屋入帳及工程收入增加', CAST(N'2024-11-18T16:30:32.937' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'95b72afa-8220-411f-b703-9f808d802c37', N'1131117', N'11310', N'2458  ', 1083784, 1114868, 1075830, -2.7881326675415039, 0.73933613300323486, 10743816, 10024299, 7.1777286529541016, N'-', CAST(N'2024-11-18T16:30:32.857' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'e66362cb-d0fc-4389-9e97-9fd70badde51', N'1131117', N'11310', N'8046  ', 2616078, 2968814, 3600237, -11.881377220153809, -27.33595085144043, 27029127, 36541921, -26.032550811767578, N'-', CAST(N'2024-11-18T16:30:34.083' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'53a670b7-5bd3-4f02-8e36-a019d7c594dd', N'1131117', N'11310', N'4576  ', 182863, 216868, 192893, -15.680045127868652, -5.1997737884521484, 1817529, 1815244, 0.12587839365005493, N'-', CAST(N'2024-11-18T16:30:33.333' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8f16ac9a-9a2c-4223-8284-a01d1475398b', N'1131117', N'11310', N'2476  ', 558215, 605687, 469460, -7.8377113342285156, 18.905763626098633, 5473074, 4759054, 15.003401756286621, N'-', CAST(N'2024-11-18T16:30:32.890' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'574f6cfb-7a9d-4e40-9dd6-a0d9e14ee1e5', N'1131117', N'11310', N'1104  ', 641942, 599242, 654514, 7.1256685256958008, -1.9208145141601563, 6515381, 6282268, 3.7106504440307617, N'-', CAST(N'2024-11-18T16:30:31.150' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'48a7f9e8-f823-47fa-b872-a13e9db6783e', N'1131117', N'11310', N'2915  ', 204615, 224828, 184815, -8.99042797088623, 10.71341609954834, 2254415, 2292830, -1.6754404306411743, N'-', CAST(N'2024-11-18T16:30:33.163' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'5e3cac3d-0238-4e70-9b3e-a1e3a9bd79b6', N'1131117', N'11310', N'3149  ', 168518, 229111, 165786, -26.447006225585938, 1.6479074954986572, 1785412, 1530371, 16.665306091308594, N'-', CAST(N'2024-11-18T16:30:33.223' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f09c43ac-ad31-4286-a060-a21d5bfcf96b', N'1131117', N'11310', N'8215  ', 1632557, 1579238, 1497256, 3.3762485980987549, 9.03659725189209, 15306557, 14801547, 3.4118731021881104, N'-', CAST(N'2024-11-18T16:30:34.117' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'575a065f-bf79-4f19-9efa-a295959226a5', N'1131117', N'11310', N'6196  ', 4564106, 5283017, 4591891, -13.607962608337402, -0.60508841276168823, 50190294, 45649743, 9.94649887084961, N'-', CAST(N'2024-11-18T16:30:33.660' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'0546d136-1e9a-4014-ba88-a298b42ff0ab', N'1131117', N'11310', N'1709  ', 660689, 781295, 667840, -15.436678886413574, -1.070765495300293, 8760716, 7870083, 11.316691398620606, N'-', CAST(N'2024-11-18T16:30:32.223' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'0a9701e3-b593-462c-9a2f-a29bdff94e12', N'1131117', N'11310', N'2897  ', 672312, 780879, 691205, -13.903178215026856, -2.7333424091339111, 8870957, 8198228, 8.2057857513427734, N'-', CAST(N'2024-11-18T16:30:33.147' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'dea5ab38-de54-464d-9e78-a2f921df1c69', N'1131117', N'11310', N'6414  ', 12295636, 12893813, 10175924, -4.6392560005187988, 20.830657958984375, 119055392, 97591485, 21.993627548217773, N'以上申報之合併營收已排除停業單位營收。113年1至10月及去年同期累計合併營收(含停業單位)為119,055,392仟元及97,769,769仟元。', CAST(N'2024-11-18T16:30:33.820' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'e807d99e-66dc-4bf2-8c69-a30a025a73f5', N'1131117', N'11310', N'5234  ', 352530, 356441, 365559, -1.0972362756729126, -3.5641305446624756, 3402965, 3632083, -6.3081707954406738, N'-', CAST(N'2024-11-18T16:30:33.373' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'4bfae428-7a76-493e-84f6-a339e7ef6c7d', N'1131117', N'11310', N'1752  ', 215996, 188749, 200252, 14.435573577880859, 7.8620939254760742, 1836651, 1834170, 0.1352655440568924, N'-', CAST(N'2024-11-18T16:30:32.293' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'fe4edeeb-3577-4bfb-a8db-a378beb781e0', N'1131117', N'11310', N'5292  ', 297131, 204206, 295651, 45.505519866943359, 0.50059020519256592, 1836260, 1737897, 5.6598868370056152, N'本公司完工百分比法係以投入成本為完工進度基礎，各期依工程安排時間不同而產生差異', CAST(N'2024-11-18T16:30:33.380' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8bbf67e0-4fdf-4399-be3f-a3b3b04b7274', N'1131117', N'11310', N'1445  ', 69963, 76198, 105406, -8.1826295852661133, -33.625221252441406, 849599, 1157021, -26.570131301879883, N'-', CAST(N'2024-11-18T16:30:31.930' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3d09d7dc-ee30-462f-ae2d-a3dae01eb50d', N'1131117', N'11310', N'1440  ', 1551381, 1335209, 1749050, 16.19012451171875, -11.301506996154785, 14742315, 16766550, -12.0730562210083, N'-', CAST(N'2024-11-18T16:30:31.910' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'2eeb20b2-2c73-4464-9829-a4111e332200', N'1131117', N'11310', N'3034  ', 8522705, 8918212, 9525678, -4.4348239898681641, -10.52915096282959, 86047937, 92800551, -7.2764806747436523, N'-', CAST(N'2024-11-18T16:30:33.190' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'bc7ec491-2499-4ffe-96b1-a46e8a8a5802', N'1131117', N'11310', N'1402  ', 23250825, 22602356, 22437543, 2.8690328598022461, 3.6246480941772461, 223446215, 212701845, 5.0513758659362793, N'-', CAST(N'2024-11-18T16:30:31.750' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'2e0c758b-94f5-4666-b98b-a4962edc9f9b', N'1131117', N'11310', N'1325  ', 25070, 23142, 30260, 8.3311729431152344, -17.151355743408203, 269915, 340187, -20.65687370300293, N'-', CAST(N'2024-11-18T16:30:31.720' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'a274d671-6790-44ba-bfd7-a4ae55085a59', N'1131117', N'11310', N'2368  ', 3064037, 3333418, 2952286, -8.08122444152832, 3.7852363586425781, 32015177, 24466227, 30.854574203491211, N'-', CAST(N'2024-11-18T16:30:32.723' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'0505f7f0-b379-4fd1-929e-a4dabf391019', N'1131117', N'11310', N'2254  ', 41704, 18572, 72183, 124.55309295654297, -42.224624633789062, 522004, 487827, 7.0059671401977539, N'-', CAST(N'2024-11-18T16:30:32.503' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd86d6592-90cc-4ab3-9733-a55356ed2319', N'1131117', N'11310', N'1568  ', 79163, 90435, 121718, -12.464200973510742, -34.961959838867188, 887591, 1208936, -26.580812454223633, N'-', CAST(N'2024-11-18T16:30:32.147' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'18b44308-e508-4c83-9e3b-a56357e2f662', N'1131117', N'11310', N'3515  ', 3086411, 2042426, 1851015, 51.114948272705078, 66.741546630859375, 19531931, 15231065, 28.237461090087891, N'“本年累計營業收入淨額”採年平均匯率計算,“本月營業收入淨額”採該月平均匯率計算,故累計營收淨額與各月營收淨額加總會有差異', CAST(N'2024-11-18T16:30:33.257' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'1b162af4-fa8e-45de-8d2d-a5d77899aa98', N'1131117', N'11310', N'6655  ', 205055, 210765, 215733, -2.7091784477233887, -4.9496369361877441, 2052210, 1899440, 8.04289722442627, N'-', CAST(N'2024-11-18T16:30:33.937' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'0ebaa5bc-b461-4d13-b0d2-a5da80afde78', N'1131117', N'11310', N'6477  ', 62292, 95152, 92806, -34.534217834472656, -32.879341125488281, 783456, 1360604, -42.418514251708984, N'-', CAST(N'2024-11-18T16:30:33.877' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7b97a21c-2fbb-4d90-ba12-a5f571638072', N'1131117', N'11310', N'2352  ', 18007192, 17666058, 17048011, 1.9310137033462524, 5.6263513565063477, 165576710, 169975738, -2.5880329608917236, N'-', CAST(N'2024-11-18T16:30:32.687' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'02e1f297-bed3-4b72-906b-a6577b35cf9d', N'1131117', N'11310', N'2542  ', 6306435, 3050875, 4392878, 106.70906066894531, 43.560440063476562, 31044461, 41394841, -25.0040340423584, N'-', CAST(N'2024-11-18T16:30:32.993' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'04c4b181-1a1d-436a-af9d-a6d941432cd1', N'1131117', N'11310', N'6184  ', 178222, 175511, 172174, 1.5446325540542603, 3.5127255916595459, 1759884, 1719542, 2.3460898399353027, N'-', CAST(N'2024-11-18T16:30:33.647' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'42070c28-788f-49c2-bc5f-a6deb87c43dd', N'1131117', N'11310', N'6753  ', 418106, 345462, 395484, 21.028072357177734, 5.7200798988342285, 3826798, 4134857, -7.450294017791748, N'-', CAST(N'2024-11-18T16:30:33.970' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'eaeed22e-ea17-4ea3-badf-a6e3e878160a', N'1131117', N'11310', N'2834  ', 2326785, 3238422, 2587709, -28.150655746459961, -10.083205223083496, 28839608, 26757052, 7.7832040786743164, N'-', CAST(N'2024-11-18T16:30:33.103' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7bf674da-e56d-454e-b4c4-a6fe1e39449a', N'1131117', N'11310', N'3443  ', 1482729, 1763514, 2127874, -15.921903610229492, -30.318759918212891, 20504278, 22053792, -7.0260663032531738, N'-', CAST(N'2024-11-18T16:30:33.250' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'e6e09a7a-ea34-414e-b60a-a7536d1aad6b', N'1131117', N'11310', N'3447  ', 326280, 317504, 155780, 2.7640597820281982, 109.44922637939453, 2024421, 2578151, -21.477794647216797, N'本月營收增加,主係客戶需求增加所致。', CAST(N'2024-11-18T16:30:33.250' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'22d65a4f-7a2d-427a-8c9a-a7b97a6602b9', N'1131117', N'11310', N'2115  ', 249617, 266636, 239953, -6.3828592300415039, 4.0274553298950195, 2581222, 2119102, 21.807350158691406, N'-', CAST(N'2024-11-18T16:30:32.443' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd2acb5d5-76bf-4e86-8ff1-a7e96a7fd1fa', N'1131117', N'11310', N'1337  ', 55125, 54485, 75105, 1.1746351718902588, -26.602756500244141, 672668, 615445, 9.29782485961914, N'-', CAST(N'2024-11-18T16:30:31.730' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'1e597407-374a-4345-8e81-a8162b24cb69', N'1131117', N'11310', N'1409  ', 3517087, 3751001, 3253929, -6.2360420227050781, 8.08739185333252, 37519805, 33011334, 13.657342910766602, N'-', CAST(N'2024-11-18T16:30:31.757' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ade21465-b002-43ea-acc1-a816f2d989a6', N'1131117', N'11310', N'2812  ', 1614678, 1473000, 1353282, 9.6183300018310547, 19.315708160400391, 16016985, 14247629, 12.418600082397461, N'-', CAST(N'2024-11-18T16:30:33.097' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'424db66f-0210-46c6-a77c-a83512f50223', N'1131117', N'11310', N'1808  ', 118814, 570068, 3706771, -79.157928466796875, -96.794677734375, 8709999, 28173686, -69.084632873535156, N'營收變動主要係本月及本期累計工程及房地出售收入皆較去年同期減少所致。', CAST(N'2024-11-18T16:30:32.327' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'13759569-1bac-4d54-9514-a859d7a5186d', N'1131117', N'11310', N'6128  ', 507131, 486426, 455298, 4.2565569877624512, 11.384411811828613, 4628652, 4437218, 4.3142800331115723, N'-', CAST(N'2024-11-18T16:30:33.410' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'e2f7a4d5-c997-4982-b174-a8a7a980bf04', N'1131117', N'11310', N'2886  ', 6192094, 6705139, 5334433, -7.6515192985534668, 16.077829360961914, 71676472, 62989359, 13.791398048400879, N'-', CAST(N'2024-11-18T16:30:33.130' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'fa2e0597-e9a1-43bd-867b-a948124e6a92', N'1131117', N'11310', N'2103  ', 3448466, 3410390, 2678997, 1.1164705753326416, 28.722278594970703, 31068529, 26223679, 18.475095748901367, N'-', CAST(N'2024-11-18T16:30:32.423' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'53f493d1-5874-4349-928b-a9782fd52bf1', N'1131117', N'11310', N'5203  ', 169952, 186934, 172299, -9.0844898223876953, -1.3621668815612793, 1716115, 1527839, 12.323025703430176, N'-', CAST(N'2024-11-18T16:30:33.370' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f50f463f-edb4-45e7-94dd-aa263f5e4ddd', N'1131117', N'11310', N'2382  ', 135893235, 155109787, 91392610, -12.388999938964844, 48.69171142578125, 1129335985, 889107561, 27.019050598144531, N'-', CAST(N'2024-11-18T16:30:32.750' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'aeb0b34c-982c-40c7-9ae7-aad67dfe3886', N'1131117', N'11310', N'1454  ', 113502, 138676, 117788, -18.153104782104492, -3.6387407779693604, 1346203, 1287000, 4.6000776290893555, N'-', CAST(N'2024-11-18T16:30:31.960' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'80610ce2-a3f8-428f-89c0-aaeeaa0556c5', N'1131117', N'11310', N'6139  ', 3994223, 5610726, 6769058, -28.810941696166992, -40.992927551269531, 58248447, 39587320, 47.139152526855469, N'合併營收數字係自結本業合併營收，最終亞翔合併營收數字以會計師查核為準。', CAST(N'2024-11-18T16:30:33.417' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'067c61af-855e-4642-8c1e-ab0fbd467f0d', N'1131117', N'11310', N'3054  ', 3814, 10983, 3849, -65.273605346679688, -0.90932708978652954, 85681, 28659, 198.9671630859375, N'主係因本期產品結構改變致銷售金額增加。', CAST(N'2024-11-18T16:30:33.213' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'1aecb3d1-82a2-4e72-9179-ab388ae6ed54', N'd      ', N'e    ', N'a     ', 0, 1, 2, 3, 4, 5, 6, 7, N'f', CAST(N'2024-11-19T14:41:57.713' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'5fd345e2-f8f8-4408-b0b3-ab4171dd94b7', N'1131117', N'11310', N'8070  ', 1510190, 1509848, 1375300, 0.022651286795735359, 9.8080415725708, 14249644, 13694905, 4.05069637298584, N'-', CAST(N'2024-11-18T16:30:34.087' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'12091796-9d04-4682-887d-ab68fc5f71ab', N'1131117', N'11310', N'1776  ', 107496, 100174, 140845, 7.3092818260192871, -23.677801132202148, 1003849, 1015896, -1.1858497858047485, N'-', CAST(N'2024-11-18T16:30:32.303' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7f945202-666f-4d8a-b9a2-abac8a4c6be7', N'1131117', N'11310', N'2855  ', 960369, 691391, 120047, 38.903892517089844, 699.994140625, 11219795, 7470791, 50.182155609130859, N'今年單月營收及累計營收較去年同期增加，主因今年泛自營業務操作獲利優於去年同期所致。', CAST(N'2024-11-18T16:30:33.117' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f5be58e6-e6af-4ccb-8545-abe5d6605e36', N'1131117', N'11310', N'8201  ', 24071, 37063, 25874, -35.053825378417969, -6.9683852195739746, 389049, 449549, -13.457932472229004, N'-', CAST(N'2024-11-18T16:30:34.113' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'1406c0d6-4f58-48b0-a1a5-ac3db840f1ea', N'1131117', N'11310', N'1515  ', 377521, 388591, 876716, -2.8487536907196045, -56.939189910888672, 5481040, 4823540, 13.631067276000977, N'客戶庫存管理減少採購量', CAST(N'2024-11-18T16:30:32.070' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8ef650af-5722-4c9d-9aea-acfa0b5f80a2', N'1131117', N'11310', N'4967  ', 1195186, 1185953, 1601091, 0.77853000164031982, -25.351776123046875, 17866997, 12473510, 43.239528656005859, N'-', CAST(N'2024-11-18T16:30:33.367' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7b2f4337-b934-4994-bdb3-ad5db1bfd3d5', N'1131117', N'11310', N'2704  ', 95554, 129632, 97484, -26.288261413574219, -1.9798120260238648, 1072452, 1070484, 0.18384207785129547, N'-', CAST(N'2024-11-18T16:30:33.063' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8ac2412d-ebfa-45a2-b07a-ad68c600b8a6', N'1131117', N'11310', N'1521  ', 281914, 251199, 361508, 12.227357864379883, -22.0172176361084, 3149571, 3942215, -20.106563568115234, N'-', CAST(N'2024-11-18T16:30:32.087' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'dbf33454-7c20-4e1f-8e31-adc9348182fd', N'1131117', N'11310', N'1418  ', 1459, 89, 258, 1539.3258056640625, 465.50387573242188, 8656, 17255, -49.834831237792969, N'因配合客戶生產線出貨及去年同期銷庫存。', CAST(N'2024-11-18T16:30:31.787' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'1e2ebca7-8192-47bd-bfcf-ade3e081303b', N'1131117', N'11310', N'2317  ', 804847646, 733023957, 741200306, 9.7982730865478516, 8.5870637893676758, 5532477036, 5049425453, 9.5664663314819336, N'-', CAST(N'2024-11-18T16:30:32.580' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'6a3c071a-347d-4b8a-b1b1-ae5fdbc0ca77', N'1131117', N'11310', N'2105  ', 7777354, 8461855, 7636730, -8.0892543792724609, 1.8414163589477539, 81273327, 81023148, 0.30877470970153809, N'無。', CAST(N'2024-11-18T16:30:32.430' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'4ba86a20-e4b3-48ca-88bd-ae9f9a6504d0', N'1131117', N'11310', N'1906  ', 294975, 243791, 344129, 20.995033264160156, -14.283596992492676, 2772312, 2874792, -3.5647797584533691, N'-', CAST(N'2024-11-18T16:30:32.350' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7fc75b38-f1d7-475e-8c89-aecb603a69a5', N'1131117', N'11310', N'2243  ', 115417, 85263, 243362, 35.365867614746094, -52.573944091796875, 1350471, 1222998, 10.422993659973145, N'本月認列合約收入金額較去年同期減少', CAST(N'2024-11-18T16:30:32.493' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'732090f7-86e3-4cf0-9a06-af0082489ee5', N'1131117', N'11310', N'1762  ', 77116, 123658, 183897, -37.637676239013672, -58.065654754638672, 1138166, 1814986, -37.290645599365234, N'當月營收較去年同期減少，主係部份產品因應市場變化調整供貨。', CAST(N'2024-11-18T16:30:32.300' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ee48a32c-1bfb-4733-9ebd-af1ff3f0355d', N'1131117', N'11310', N'2617  ', 379658, 359030, 358417, 5.745481014251709, 5.9263372421264648, 3685773, 3272964, 12.612695693969727, N'-', CAST(N'2024-11-18T16:30:33.040' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'89010674-340c-48e0-b987-af2c64f88b53', N'1131117', N'11310', N'6928  ', 135453, 110560, 399017, 22.515377044677734, -66.053329467773438, 1673661, 3233452, -48.239189147949219, N'本月較去年同期減少，係因客戶需求遞延', CAST(N'2024-11-18T16:30:34.053' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'1e8a2f74-01e5-43ee-ab30-af6a1a46b9f3', N'1131117', N'11310', N'2534  ', 105316, 64530, 164483, 63.2047119140625, -35.971500396728516, 1075980, 2280797, -52.824386596679688, N'本月成屋銷售情形較去年同期減少。', CAST(N'2024-11-18T16:30:32.970' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'87109713-0f1b-4c07-80be-afac54b4c03e', N'1131117', N'11310', N'2901  ', 10911, 10926, 11571, -0.1372871994972229, -5.7039151191711426, 111628, 109718, 1.7408264875411987, N'-', CAST(N'2024-11-18T16:30:33.150' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8146f34b-0979-47f6-a466-afdeb4f9ffc4', N'1131117', N'11310', N'2347  ', 35916033, 38611214, 33381377, -6.9803061485290527, 7.5930242538452148, 348678958, 315165233, 10.633699417114258, N'本月營收係當月自結數，前期調整數反應在本年累計營收內', CAST(N'2024-11-18T16:30:32.670' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'28aeb2eb-e579-4535-bf42-b0ce95f8a6db', N'1131117', N'11310', N'4904  ', 9843541, 9121101, 8923135, 7.9205350875854492, 10.314827919006348, 85298807, 76147157, 12.018373489379883, N'-', CAST(N'2024-11-18T16:30:33.347' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'4acb5963-af84-4617-84d4-b0cf7e596852', N'1131117', N'11310', N'4956  ', 101633, 124338, 90201, -18.260707855224609, 12.673916816711426, 1067354, 963594, 10.768020629882813, N'-', CAST(N'2024-11-18T16:30:33.360' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'222fec6d-3de4-447d-8d9c-b122e108a1e9', N'1131117', N'11310', N'8404  ', 566312, 637953, 459142, -11.229824066162109, 23.341361999511719, 5803358, 4365223, 32.945281982421875, N'-', CAST(N'2024-11-18T16:30:34.130' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3bf29541-6ad1-4fb4-add8-b16e58117c4d', N'1131117', N'11310', N'3027  ', 161063, 161301, 165979, -0.14755022525787354, -2.9618203639984131, 1664406, 1530838, 8.7251558303833, N'-', CAST(N'2024-11-18T16:30:33.187' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'30f227da-32da-4ba1-8ee4-b1ae5d94c3e1', N'1131117', N'11310', N'3006  ', 1146747, 1234788, 1079154, -7.1300497055053711, 6.2635173797607422, 11477066, 9798802, 17.127237319946289, N'-', CAST(N'2024-11-18T16:30:33.170' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'0348e6dd-2259-4ac0-9234-b205154293b8', N'1131117', N'11310', N'1342  ', 175812, 212103, 202304, -17.110082626342773, -13.095144271850586, 2023388, 2118423, -4.4861202239990234, N'-', CAST(N'2024-11-18T16:30:31.750' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'95886975-d2dc-4ae4-9c9c-b271179fdf06', N'1131117', N'11310', N'1451  ', 427411, 446175, 353359, -4.2055249214172363, 20.95659065246582, 5377067, 5239641, 2.6228132247924805, N'-', CAST(N'2024-11-18T16:30:31.947' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b448da1b-9253-4a49-bd0c-b29b2dba93fa', N'1131117', N'11310', N'3031  ', 68318, 88028, 82975, -22.390602111816406, -17.664356231689453, 972534, 936844, 3.8095989227294922, N'-', CAST(N'2024-11-18T16:30:33.190' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'844feb24-5864-4eb7-a8b5-b2ae3fd01c29', N'1131117', N'11310', N'1712  ', 1604818, 1553265, 1508347, 3.3190085887908936, 6.3958096504211426, 16173680, 16102905, 0.43951696157455444, N'-', CAST(N'2024-11-18T16:30:32.237' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd9c1460d-10f4-45c0-af8d-b2b11c3b1785', N'1131117', N'11310', N'2008  ', 113743, 105624, 97124, 7.6866998672485352, 17.111116409301758, 1204199, 1234017, -2.4163362979888916, N'-', CAST(N'2024-11-18T16:30:32.360' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'2840f2a3-57aa-4e23-a341-b3109130fe8a', N'1131117', N'11310', N'6901  ', -564557, NULL, 228438, 21.963016510009766, -347.137939453125, NULL, NULL, 9.8872842788696289, N'營業收入為投資標的之評價損益(含已實現及未實現)，投資標的的股數及公允價值變動情形，請參考本公司網站投資人專區/財務資訊。', CAST(N'2024-11-18T16:30:34.040' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'0bacfab4-8c40-4442-9691-b36c59835024', N'1131117', N'11310', N'4137  ', 337682, 374340, 413016, -9.7927017211914062, -18.239971160888672, 3376974, 3718593, -9.18678092956543, N'-', CAST(N'2024-11-18T16:30:33.307' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ae3952ac-f23d-4a63-905d-b375c92fbfd7', N'1131117', N'11310', N'1590  ', 2302618, 2472535, 2395758, -6.8721776008605957, -3.8877048492431641, 25316937, 24867320, 1.8080637454986572, N'本月營業收入換算匯率為4.5139991；本年累計營業收入換算匯率為4.4496686。', CAST(N'2024-11-18T16:30:32.157' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b01eec8f-abce-426d-b584-b378244418a9', N'1131117', N'11310', N'2049  ', 2173193, 2164124, 2000161, 0.41906100511550903, 8.6509037017822266, 20189062, 20875153, -3.2866394519805908, N'-', CAST(N'2024-11-18T16:30:32.407' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3871cdd3-d57e-490e-9899-b38a6cadf5f8', N'1131117', N'11310', N'1617  ', 292385, 289270, 231335, 1.0768486261367798, 26.390298843383789, 2807726, 2347508, 19.604534149169922, N'-', CAST(N'2024-11-18T16:30:32.193' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'bd704834-5403-4c6c-b870-b3cb3aaacb4d', N'1131117', N'11310', N'1789  ', 227722, 265990, 258302, -14.387006759643555, -11.838855743408203, 2597530, 2321221, 11.903605461120606, N'-', CAST(N'2024-11-18T16:30:32.310' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'e5b42da8-1970-491b-850f-b3cc668b0ad3', N'1131117', N'11310', N'1310  ', 770033, 961410, 891484, -19.905866622924805, -13.62346363067627, 9462046, 7836675, 20.740570068359375, N'-', CAST(N'2024-11-18T16:30:31.560' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'0ee1408f-f779-428f-be68-b435c14cd78a', N'1131117', N'11310', N'1540  ', 17719, 29278, 81030, -39.480155944824219, -78.1327896118164, 442526, 458071, -3.3935787677764893, N'美國市場衰退', CAST(N'2024-11-18T16:30:32.133' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3014e9e5-c229-4698-86b7-b44c2d3b6c54', N'1131117', N'11310', N'2497  ', 430382, 444427, 333744, -3.1602489948272705, 28.955726623535156, 3750691, 3023511, 24.050846099853516, N'-', CAST(N'2024-11-18T16:30:32.930' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'db57df52-aada-4f39-967b-b475157bbc36', N'1131117', N'11310', N'2107  ', 96974, 162631, 92685, -40.371761322021484, 4.6275019645690918, 1221067, 1147456, 6.41514778137207, N'-', CAST(N'2024-11-18T16:30:32.437' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'386298b6-ecac-400d-a08e-b47abe8b0e62', N'1131117', N'11310', N'1905  ', 1587174, 1552185, 1857421, 2.2541770935058594, -14.549582481384277, 17285525, 17354731, -0.39877310395240784, N'-', CAST(N'2024-11-18T16:30:32.347' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'49ee682f-4922-4180-ba1b-b4debe5322f0', N'1131117', N'11310', N'1216  ', 54649449, 57852278, 49801476, -5.5362191200256348, 9.7345972061157227, 554449306, 483652868, 14.637861251831055, N'-', CAST(N'2024-11-18T16:30:31.270' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'bbaa6c8e-b07d-4f53-a61e-b520e8fb786a', N'1131117', N'11310', N'2345  ', 10882611, 10047189, 7178471, 8.3149824142456055, 51.600681304931641, 82335452, 69410556, 18.620937347412109, N'客戶需求增加', CAST(N'2024-11-18T16:30:32.670' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd75f1d70-867d-4677-b4cf-b530dfd0f6e1', N'1131117', N'11310', N'5515  ', 633130, 514265, 350073, 23.113569259643555, 80.8565673828125, 4559409, 3256160, 40.02410888671875, N'係因部分工案投入量增加，以致營收增加。', CAST(N'2024-11-18T16:30:33.387' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'65dc6c88-6c9c-4442-b2fa-b5552b1b8eb4', N'1131117', N'11310', N'1442  ', 856585, 744619, 1041924, 15.036683082580566, -17.788148880004883, 8310802, 2072774, 300.95071411132812, N'本年累計認收710戶，去年累計認收183戶，故兩期差異大。', CAST(N'2024-11-18T16:30:31.920' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9d1a8df4-e84d-43a6-93a4-b57d54840007', N'1131117', N'11310', N'3501  ', 483933, 449321, 433880, 7.703178882598877, 11.536139488220215, 5025959, 4458785, 12.720371246337891, N'-', CAST(N'2024-11-18T16:30:33.257' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'2f02d69c-fce7-4384-8b0c-b57fafc788d2', N'1131117', N'11310', N'6805  ', 910239, 771374, 590533, 18.002292633056641, 54.1385498046875, 6328152, 4456080, 42.011634826660156, N'較去年同期客戶需求增加', CAST(N'2024-11-18T16:30:34.010' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'feba6037-e0ed-43de-914c-b582c15c1e4d', N'1131117', N'11310', N'1446  ', 472564, 385413, 10093, 22.61236572265625, 4582.0966796875, 3528606, 108581, 3149.745361328125, N'營建銷售增加營收', CAST(N'2024-11-18T16:30:31.933' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'e1469af4-9ccc-4ac8-947a-b585bb289ab5', N'1131117', N'11310', N'6605  ', 1750412, 1673742, 1603829, 4.5807538032531738, 9.1395654678344727, 16706939, 15301648, 9.1839189529418945, N'-', CAST(N'2024-11-18T16:30:33.927' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'81027758-303c-4a22-b993-b5f9242d0036', N'1131117', N'11310', N'2547  ', 518191, 518704, 495567, -0.098900333046913147, 4.5652756690979, 5481628, 5281914, 3.7810914516448975, N'-', CAST(N'2024-11-18T16:30:33.003' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'28ef3d25-7a6f-4867-8ba0-b5fc8a9bf9cb', N'1131117', N'11310', N'3706  ', 7148055, 5265408, 2862231, 35.755008697509766, 149.7371826171875, 45059508, 30545767, 47.514736175537109, N'因超大規模雲端資料中心及雲端服務客戶們強力需求；另在車用電子市場方面，汽車製造業客戶需求也持續穩健。', CAST(N'2024-11-18T16:30:33.290' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd0b496aa-3f69-42ac-8871-b632181bea7c', N'1131117', N'11310', N'1558  ', 637421, 731918, 572850, -12.910872459411621, 11.271885871887207, 6947502, 6255452, 11.063149452209473, N'-', CAST(N'2024-11-18T16:30:32.140' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b6cd48d2-5391-4100-9922-b63628fb2152', N'1131117', N'11310', N'1533  ', 497172, 226177, 425390, 119.81545257568359, 16.874397277832031, 2462613, 3498653, -29.612539291381836, N'-', CAST(N'2024-11-18T16:30:32.117' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'83e0d5e2-3490-4988-a563-b738ef71c3ed', N'1131117', N'11310', N'5907  ', 304363, 232464, 357707, 30.92909049987793, -14.912763595581055, 2703180, 3169501, -14.71275806427002, N'-', CAST(N'2024-11-18T16:30:33.403' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'cc46d330-a62d-4739-b8d4-b75815d97f20', N'1131117', N'11310', N'6526  ', 1627264, 1854172, 1180572, -12.237699508666992, 37.8369140625, 15917128, 11569943, 37.573089599609375, N'-', CAST(N'2024-11-18T16:30:33.890' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'386d5195-16c4-4acf-93dd-b7d9bb986cb4', N'1131117', N'11310', N'2380  ', 253407, 182247, 223946, 39.0459098815918, 13.155403137207031, 2154160, 1500875, 43.526943206787109, N'海外地區銷售增加。', CAST(N'2024-11-18T16:30:32.747' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ad16d952-65bf-439a-825e-b81d9c3fb7d8', N'1131117', N'11310', N'1439  ', 5303, 4843, 15892, 9.4982452392578125, -66.631011962890625, 83439, 163333, -48.914794921875, N'主係本公司重要子公司漢霖開發之投資建案於去年同期集中交屋認列收入所致', CAST(N'2024-11-18T16:30:31.887' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'64fb04ce-80b0-40c8-8baa-b833f35c7923', N'1131117', N'11310', N'1708  ', 592394, 559176, 452530, 5.9405269622802734, 30.907121658325195, 5271921, 4858433, 8.5107278823852539, N'-', CAST(N'2024-11-18T16:30:32.217' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'dacd8611-fc01-4df3-a3ad-b89d0578393b', N'1131117', N'11310', N'4919  ', 2310485, 2708378, 2865741, -14.691191673278809, -19.375652313232422, 26963471, 29744156, -9.3486766815185547, N'-', CAST(N'2024-11-18T16:30:33.350' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'dee2f1c0-a9c4-44fd-9259-b93fdb4a2d72', N'1131117', N'11310', N'4426  ', 82579, 67684, 97965, 22.006677627563477, -15.705609321594238, 817796, 1095769, -25.367847442626953, N'-', CAST(N'2024-11-18T16:30:33.313' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'df9dc017-2259-4cc5-99cd-ba391e9d3fc5', N'1131117', N'11310', N'5285  ', 428101, 465056, 398246, -7.946354866027832, 7.4966225624084473, 4225165, 4263810, -0.90634900331497192, N'-', CAST(N'2024-11-18T16:30:33.380' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c4c5cc3a-3423-45df-9412-ba600b0680fa', N'1131117', N'11310', N'2433  ', 230369, 226267, 237578, 1.8129024505615234, -3.0343718528747559, 2287526, 2402048, -4.76768159866333, N'-', CAST(N'2024-11-18T16:30:32.823' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'6a50036c-61e9-4df6-b436-ba990c04d6ec', N'1131117', N'11310', N'2377  ', 20066245, 19810278, 19147888, 1.292091965675354, 4.7961268424987793, 166451342, 152958594, 8.8211765289306641, N'-', CAST(N'2024-11-18T16:30:32.743' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'1cf80c18-6330-4e6c-9e67-baac402de127', N'1131117', N'11310', N'2881  ', 29675707, 22774883, 13798462, 30.300151824951172, 115.06532287597656, 273587400, 167323161, 63.508384704589844, N'本月及本年累計營業收入較去年本月及去年累計營業收入增加，主係保險淨收益及投資相關淨收益增加所致。', CAST(N'2024-11-18T16:30:33.123' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'bf239313-66a9-4936-b2b9-bac21c7070ad', N'1131117', N'11310', N'3011  ', 90714, 111747, 103572, -18.821981430053711, -12.414551734924316, 970366, 979645, -0.94717985391616821, N'-', CAST(N'2024-11-18T16:30:33.170' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3d7f47ae-c6a9-42df-be66-bb061a98fe49', N'1131117', N'11310', N'1817  ', 247743, 231799, 208324, 6.8783731460571289, 18.921968460083008, 2260649, 1995228, 13.302790641784668, N'-', CAST(N'2024-11-18T16:30:32.337' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'86ce4667-c744-44c6-96a8-bb63708b3a08', N'1131117', N'11310', N'4148  ', 255607, 260314, 189830, -1.8082008361816406, 34.650478363037109, 2015491, 2445919, -17.597803115844727, N'-', CAST(N'2024-11-18T16:30:33.307' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'503ccd1c-a095-4b10-9819-bbe2d433fb41', N'1131117', N'11310', N'6806  ', 3011448, 951759, 1349533, 216.40867614746094, 123.14741516113281, 12934100, 7331379, 76.421104431152344, N'主要係因離岸之主要工程開始施作認列收入所致', CAST(N'2024-11-18T16:30:34.010' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'31659b55-b392-4873-97db-bc08661ab162', N'1131117', N'11310', N'1434  ', 2260181, 2366216, 2217809, -4.4812054634094238, 1.9105342626571655, 24143106, 24242947, -0.411835253238678, N'-', CAST(N'2024-11-18T16:30:31.803' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9160102c-4d7d-4988-8645-bc876aded8f4', N'1131117', N'11310', N'2301  ', 12396253, 11850060, 12238842, 4.6092004776000977, 1.2861592769622803, 111224331, 123663339, -10.058767318725586, N'-', CAST(N'2024-11-18T16:30:32.523' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b67292f9-ec6a-4f2f-b5f0-bccf53bf159b', N'1131117', N'11310', N'4572  ', 80753, 72489, 65063, 11.400350570678711, 24.115087509155273, 748687, 692470, 8.1183300018310547, N'-', CAST(N'2024-11-18T16:30:33.333' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b1104e37-59e2-4476-9213-bd92a12edcb5', N'1131117', N'11310', N'6952  ', 102812, 94850, 107988, 8.3943071365356445, -4.7931251525878906, 1028350, 895186, 14.875567436218262, N'-', CAST(N'2024-11-18T16:30:34.063' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3d5788f9-1db6-4df3-950c-bda67d6d5238', N'1131117', N'11310', N'2496  ', 74840, 74166, 69383, 0.90877223014831543, 7.8650388717651367, 689853, 626920, 10.03844165802002, N'-', CAST(N'2024-11-18T16:30:32.930' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3ede8085-8f23-4a68-bb70-bdb1de32a07a', N'1131117', N'11310', N'1809  ', 193253, 189291, 206011, 2.0930736064910889, -6.1928730010986328, 1965278, 1941621, 1.2184149026870728, N'-', CAST(N'2024-11-18T16:30:32.330' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'96643a6d-9388-4d3c-8a7f-bdb5e2692598', N'1131117', N'11310', N'3711  ', 56425583, 55579391, 56166613, 1.5224924087524414, 0.46107462048530579, 489571607, 477499883, 2.5281102657318115, N'-', CAST(N'2024-11-18T16:30:33.290' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'77a474ea-ad44-4efc-8f04-bdba6d4be5d7', N'1131117', N'11310', N'1449  ', 275243, 215637, 239989, 27.641824722290039, 14.689840316772461, 2500999, 2274567, 9.9549493789672852, N'-', CAST(N'2024-11-18T16:30:31.943' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'2505a46b-8817-4453-b251-be29911ed889', N'1131117', N'11310', N'6405  ', 9455, 6959, 12721, 35.867221832275391, -25.674081802368164, 123036, 178535, -31.085781097412109, N'-', CAST(N'2024-11-18T16:30:33.803' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'80d8b238-7851-4cb2-8518-be7263dfecb4', N'1131117', N'11310', N'2314  ', 109785, 108871, 189132, 0.83952569961547852, -41.953239440917969, 1394896, 3102488, -55.0394401550293, N'因客戶調整排程遞延出貨，故營收減少', CAST(N'2024-11-18T16:30:32.567' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8e0658eb-e255-49cf-a484-be72d859bf6f', N'1131117', N'11310', N'1718  ', 4794863, 2747430, 3324602, 74.5217514038086, 44.223670959472656, 37327236, 32702566, 14.141612052917481, N'本月營業收入淨額變動主要係認列子公司台中銀行公司透過損益按公允價值衡量之金融資產及負債利益1,054,455仟元。', CAST(N'2024-11-18T16:30:32.250' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'98150591-72ed-41ab-a1e5-bf044c124040', N'1131117', N'11310', N'3296  ', 131540, 127565, 131156, 3.1160585880279541, 0.29278111457824707, 1302168, 1229406, 5.9184679985046387, N'-', CAST(N'2024-11-18T16:30:33.230' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'14270674-cf3a-4335-b193-bf6d20f574ef', N'1131117', N'11310', N'1527  ', 260214, 234529, 200496, 10.951737403869629, 29.785133361816406, 2652629, 2321706, 14.253440856933594, N'-', CAST(N'2024-11-18T16:30:32.100' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'583b9409-e39f-4ab6-9305-bf7c16fccb0f', N'1131117', N'11310', N'8481  ', 104097, 101551, 73655, 2.5071146488189697, 41.330528259277344, 918505, 822410, 11.684560775756836, N'-', CAST(N'2024-11-18T16:30:34.157' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'2404b1ff-9203-4ff9-a509-bf8aed46c196', N'1131117', N'11310', N'3042  ', 1164332, 1299860, 1090113, -10.426353454589844, 6.8083767890930176, 10508908, 8904600, 18.016620635986328, N'-', CAST(N'2024-11-18T16:30:33.200' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'10191872-e90b-4193-98b3-bff1bff2da12', N'1131117', N'11310', N'8442  ', 707906, 684937, 640328, 3.3534471988677979, 10.553653717041016, 7023555, 6666104, 5.3622174263000488, N'-', CAST(N'2024-11-18T16:30:34.143' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'35f97bd2-dd89-40f9-8473-c03672e60706', N'1131117', N'11310', N'4942  ', 433411, 434674, 484376, -0.29056257009506226, -10.521784782409668, 4677669, 5080544, -7.9297609329223633, N'-', CAST(N'2024-11-18T16:30:33.357' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd1ae1fcd-9ffa-4a1c-a4ff-c06b0a62e692', N'1131117', N'11310', N'6283  ', 156645, 127701, 118201, 22.665445327758789, 32.524257659912109, 1207774, 1055634, 14.412192344665527, N'-', CAST(N'2024-11-18T16:30:33.790' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'801e7201-32a6-4663-bc57-c09fde380124', N'1131117', N'11310', N'5607  ', 300593, 289341, 246746, 3.8888370990753174, 21.822845458984375, 2849607, 2374216, 20.023073196411133, N'-', CAST(N'2024-11-18T16:30:33.397' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'5243e97b-1a11-4b10-b20f-c1394771b6dc', N'1131117', N'11310', N'4755  ', 407258, 351865, 419200, 15.742685317993164, -2.848759651184082, 3976441, 4094776, -2.8899016380310059, N'-', CAST(N'2024-11-18T16:30:33.343' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7eef87a6-33cb-448c-a429-c163b68806bb', N'1131117', N'11310', N'2731  ', 2363992, 2632574, 2606094, -10.202258110046387, -9.2898416519165039, 23746339, 18054287, 31.527425765991211, N'受惠政府解除組團禁令，觀光需求活絡致出境團體旅遊業績大幅提升。', CAST(N'2024-11-18T16:30:33.080' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'0f137c78-bc4c-4f93-af41-c18f4ab66db4', N'1131117', N'11310', N'1612  ', 583713, 475857, 473115, 22.665632247924805, 23.376558303833008, 5406885, 4921673, 9.85867977142334, N'-', CAST(N'2024-11-18T16:30:32.183' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c7391357-45b8-44ba-bc26-c1d301707d05', N'1131117', N'11310', N'1319  ', 2260509, 2171105, 2125831, 4.1179032325744629, 6.3353109359741211, 20935993, 19429360, 7.7544140815734863, N'-', CAST(N'2024-11-18T16:30:31.697' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9fd17f93-d8fe-4db4-acea-c203628324cb', N'1131117', N'11310', N'1723  ', 632708, 512032, 744172, 23.568058013916016, -14.97825813293457, 6491557, 7147849, -9.181671142578125, N'-', CAST(N'2024-11-18T16:30:32.263' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'254d4651-48a8-46e3-943a-c20718ee903f', N'1131117', N'11310', N'5534  ', 1494581, 1579669, 4096599, -5.3864450454711914, -63.51654052734375, 6694841, 7078811, -5.4242157936096191, N'本月營收較去年同期減少，主要係因本月過戶交屋數額較去年同期減少所致。', CAST(N'2024-11-18T16:30:33.397' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'fbeda937-cdf7-4657-8240-c212a66c1d26', N'1131117', N'11310', N'6152  ', 111955, 136410, 212756, -17.927570343017578, -47.378688812255859, 1937529, 1869584, 3.6342308521270752, N'-', CAST(N'2024-11-18T16:30:33.430' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'fa963362-30f9-4215-aee5-c27cca0d76cc', N'1131117', N'11310', N'8150  ', 1784936, 1888888, 1970006, -5.50334358215332, -9.3943872451782227, 19081259, 17600821, 8.4111871719360352, N'-', CAST(N'2024-11-18T16:30:34.107' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'046965a1-a186-4d8d-82e7-c28e659acc94', N'1131117', N'11310', N'2453  ', 598691, 670468, 577641, -10.705507278442383, 3.6441318988800049, 5259754, 4822309, 9.0712766647338867, N'-', CAST(N'2024-11-18T16:30:32.847' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'5100befe-0d86-48cd-a4bd-c2f1393119c2', N'1131117', N'11310', N'2884  ', 5256641, 6863663, 6126776, -23.413475036621094, -14.202167510986328, 63848675, 54317260, 17.547672271728516, N'-', CAST(N'2024-11-18T16:30:33.127' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8af9f49c-d91e-4d3d-9045-c32c86505157', N'1131117', N'11310', N'9927  ', 659298, 713276, 828704, -7.5676174163818359, -20.442281723022461, 7159826, 7622700, -6.0723104476928711, N'-', CAST(N'2024-11-18T16:30:34.190' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'2a081e71-0e19-4897-b98a-c39294ea474a', N'1131117', N'11310', N'1805  ', 114, 43, 539, 165.11627197265625, -78.849723815917969, 4820, 144567, -96.665908813476562, N'當月營收減少主係子公司租賃業務經營模式調整；去年累計營收較高主要係認列康橋旭案收入較高所致。', CAST(N'2024-11-18T16:30:32.320' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3f6f3129-3991-4942-8c12-c3da88796a41', N'1131117', N'11310', N'3535  ', 1647, 2078, 8245, -20.741096496582031, -80.024253845214844, 594955, 418771, 42.071681976318359, N'本公司以銷售機台為主，113年10月出售機台較去年同期少，但113年累計出售機台較去年同期增加，此為產業特性，尚屬正常。', CAST(N'2024-11-18T16:30:33.260' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'1f5cdffa-7300-4a02-9b22-c3ed695b0014', N'1131117', N'11310', N'2614  ', 478190, 459592, 501743, 4.0466327667236328, -4.6942358016967773, 4731766, 4818371, -1.7973916530609131, N'-', CAST(N'2024-11-18T16:30:33.037' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7f8b037b-0cf2-4cd7-9b24-c40750e45fad', N'1131117', N'11310', N'2360  ', 1801427, 1769068, 1796614, 1.8291552066802979, 0.26789283752441406, 17366131, 15448145, 12.415639877319336, N'-', CAST(N'2024-11-18T16:30:32.707' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'36d2a4bb-91ef-4214-9f6d-c480621b534f', N'1131117', N'11310', N'3686  ', 8603, 5353, 4505, 60.713619232177734, 90.965591430664062, 69598, 26834, 159.364990234375, N'本期營收與去年同期差異，主要係本期電子零組件材料交易量較去年同期多所致', CAST(N'2024-11-18T16:30:33.287' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'15346688-5619-4a0e-99fa-c4a4b6ba4195', N'1131117', N'11310', N'1413  ', 180909, 205423, 222728, -11.933424949645996, -18.775815963745117, 1928015, 1673038, 15.240359306335449, N'-', CAST(N'2024-11-18T16:30:31.767' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9773ca04-0cc7-4f80-9c78-c4be06275de4', N'1131117', N'11310', N'4106  ', 205846, 168150, 215814, 22.418079376220703, -4.6187920570373535, 1978831, 2184058, -9.3965911865234375, N'-', CAST(N'2024-11-18T16:30:33.303' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'a49d23bd-8a41-4008-83d9-c4cb5f6a94d3', N'1131117', N'11310', N'1626  ', 401323, 555884, 410611, -27.804542541503906, -2.2619948387145996, 7022648, 7325109, -4.1290988922119141, N'-', CAST(N'2024-11-18T16:30:32.200' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd1b3b059-b4a4-4f10-adc6-c509a7fffdef', N'1131117', N'11310', N'5608  ', 304778, 311927, 296158, -2.2918825149536133, 2.9106085300445557, 2868988, 2928334, -2.0266129970550537, N'-', CAST(N'2024-11-18T16:30:33.397' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'19e01d6c-9321-4b78-9fc6-c57a55a5d108', N'1131117', N'11310', N'6658  ', 124719, 110324, 76153, 13.047931671142578, 63.774242401123047, 1217448, 1061595, 14.681022644042969, N'配合客戶訂單時程交貨，故營收上升。', CAST(N'2024-11-18T16:30:33.940' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'0aa45e4f-3214-400a-a7ed-c588f80b021d', N'1131117', N'11310', N'2406  ', 335759, 588901, 277946, -42.985492706298828, 20.800083160400391, 6282043, 2981654, 110.68987274169922, N'係因子公司太陽能導電漿產品銷量增加所致。', CAST(N'2024-11-18T16:30:32.777' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'09549749-f64d-450f-9e05-c5d44fc32913', N'1131117', N'11310', N'5269  ', 622811, 527603, 597873, 18.045387268066406, 4.1711201667785645, 6804169, 5288248, 28.66584587097168, N'-', CAST(N'2024-11-18T16:30:33.377' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'cddd0ba1-d072-440e-a930-c62adeac8b5d', N'1131117', N'11310', N'8473  ', 243790, 181394, 251173, 34.398052215576172, -2.9394083023071289, 2456508, 3081603, -20.284734725952148, N'-', CAST(N'2024-11-18T16:30:34.153' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9314dbf2-0f2b-4098-a8d8-c633c4afdc1a', N'1131117', N'11310', N'2460  ', 247569, 257959, 213319, -4.0277719497680664, 16.055767059326172, 2545602, 2054355, 23.912467956542969, N'-', CAST(N'2024-11-18T16:30:32.863' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd2a42088-5044-4d47-8ee1-c77f292f8761', N'1131117', N'11310', N'2365  ', 65647, 75538, 59858, -13.094071388244629, 9.6712217330932617, 817527, 632296, 29.29498291015625, N'-', CAST(N'2024-11-18T16:30:32.720' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8e41c445-95f4-492b-a894-c7b1504fbdd0', N'1131117', N'11310', N'2471  ', 82777, 73724, 74620, 12.279582977294922, 10.93138599395752, 677220, 652469, 3.7934370040893555, N'-', CAST(N'2024-11-18T16:30:32.883' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'e9692864-f01d-4393-851a-c7c3698fa4b7', N'1131117', N'11310', N'2712  ', 28513, 34258, 52202, -16.769805908203125, -45.379486083984375, 279320, 569992, -50.995803833007812, N'受地震、颱風及交通管制影響，導致花蓮遊客人數大幅減少。', CAST(N'2024-11-18T16:30:33.073' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'6fd17ccf-e211-47f6-82c3-c7dfd87b2565', N'1131117', N'11310', N'4977  ', 143227, 138034, 73473, 3.7621166706085205, 94.938278198242188, 842225, 1613395, -47.797966003417969, N'客戶需求回升，因此產品出貨量增加', CAST(N'2024-11-18T16:30:33.370' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8421ef72-87f0-46db-bd92-c7f8207f55e8', N'1131117', N'11310', N'3008  ', 6546847, 6523997, 6319422, 0.35024541616439819, 3.5988259315490723, 47794413, 37278615, 28.208660125732422, N'-', CAST(N'2024-11-18T16:30:33.170' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'aaa59d7c-80d0-4cd3-8447-c8643fa7e312', N'1131117', N'11310', N'5706  ', 389782, 261443, 317388, 49.088710784912109, 22.809305191040039, 2680733, 1944190, 37.884311676025391, N'-', CAST(N'2024-11-18T16:30:33.397' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'96d8b45a-4a60-45fc-b780-c8926cae1703', N'1131117', N'11310', N'2527  ', 5466657, 151899, 33085, 3498.876220703125, 16423.068359375, 7044624, 2167644, 224.98989868164063, N'本月及本年累計營收較去年高,主要係因本月有大型工案銷售認列收入所致', CAST(N'2024-11-18T16:30:32.960' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'1447956c-d0d4-405f-a035-c8b729c0b0c8', N'1131117', N'11310', N'3653  ', 1310211, 1204437, 1038116, 8.7820281982421875, 26.21046257019043, 11168698, 9978061, 11.932548522949219, N'-', CAST(N'2024-11-18T16:30:33.280' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'e7ac9f1b-5fcf-4f07-9699-c8c2b9bc66ca', N'1131117', N'11310', N'4560  ', 142872, 142028, 108184, 0.59424901008605957, 32.063892364501953, 1300562, 1016845, 27.901695251464844, N'-', CAST(N'2024-11-18T16:30:33.323' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd77703cf-a285-4edf-9f81-c8e42716903a', N'1131117', N'11310', N'2516  ', 802959, 791013, 825305, 1.5102154016494751, -2.7076051235198975, 7411345, 6969393, 6.34132719039917, N'-', CAST(N'2024-11-18T16:30:32.950' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b9e37dae-ed71-401f-963e-c919afd57958', N'1131117', N'11310', N'6112  ', 1566054, 1388959, 1622462, 12.75019645690918, -3.4766914844512939, 15032193, 16713435, -10.059225082397461, N'-', CAST(N'2024-11-18T16:30:33.407' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'515bd332-d5f7-4386-9ee5-c94775c4ea94', N'1131117', N'11310', N'1909  ', 4344052, 4000098, 4025580, 8.5986394882202148, 7.9112076759338379, 39450636, 38446005, 2.6130959987640381, N'-', CAST(N'2024-11-18T16:30:32.350' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'5753745f-4d64-4c6d-8953-c9ac166b78aa', N'1131117', N'11310', N'2449  ', 2410546, 2343053, 2187829, 2.8805580139160156, 10.179817199707031, 21969667, 19833799, 10.768829345703125, N'以上營收不含停業部門營收:113年10月907,732仟元暨112年10月690,478仟元;113年1~10月8,212,520仟元,暨112年1~10月7,569,976仟元', CAST(N'2024-11-18T16:30:32.843' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'cb7bd9f9-4e14-47eb-9973-ca2c67b1964a', N'1131117', N'11310', N'2610  ', 17130710, 16009087, 16076002, 7.00616455078125, 6.560760498046875, 168111921, 153637882, 9.4208793640136719, N'-', CAST(N'2024-11-18T16:30:33.030' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c0579320-2246-422e-b729-ca71ed8c488c', N'1131117', N'11310', N'3703  ', 2548416, 2566797, 2648919, -0.71610647439956665, -3.7941136360168457, 25583358, 25212217, 1.4720680713653565, N'-', CAST(N'2024-11-18T16:30:33.287' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8658bd56-2d51-424f-8a02-ca8723b61a87', N'1131117', N'11310', N'8213  ', 1528451, 1383790, 1504563, 10.453970909118652, 1.5877035856246948, 15098064, 16177694, -6.6735715866088867, N'-', CAST(N'2024-11-18T16:30:34.117' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'586d32d6-8afa-4400-9fbf-cacb15280873', N'1131117', N'11310', N'6591  ', 92397, 142227, 113887, -35.035541534423828, -18.86958122253418, 1080178, 1152651, -6.287506103515625, N'-', CAST(N'2024-11-18T16:30:33.920' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'276295ec-ac86-443e-b2ee-cb73d576ab68', N'1131117', N'11310', N'6202  ', 229296, 235964, 178971, -2.8258547782897949, 28.119081497192383, 2038705, 2286811, -10.849431991577148, N'-', CAST(N'2024-11-18T16:30:33.667' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'66df86d9-385d-4f8e-9ba4-cb7467552d45', N'1131117', N'11310', N'4960  ', 676906, 714922, 776529, -5.3175029754638672, -12.829269409179688, 7427983, 7760900, -4.2896699905395508, N'-', CAST(N'2024-11-18T16:30:33.367' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'2787cb0d-2d08-4fd8-ab0c-cbce6a2e05de', N'1131117', N'11310', N'8103  ', 226145, 282174, 224237, -19.85618782043457, 0.85088545083999634, 2584998, 2471778, 4.5805082321166992, N'係本公司自結合併營收', CAST(N'2024-11-18T16:30:34.097' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'5fd47e0e-616c-4904-baa2-cbd1f0809883', N'1131117', N'11310', N'2908  ', 2798039, 3085499, 2624842, -9.3164834976196289, 6.5983781814575195, 30601004, 29666136, 3.151296854019165, N'-', CAST(N'2024-11-18T16:30:33.157' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'19d2d562-0dfa-40b4-ba4f-cbf359d9b463', N'1131117', N'11310', N'2247  ', 4152635, 5481869, 3551249, -24.247825622558594, 16.934492111206055, 47706446, 44090620, 8.2008962631225586, N'-', CAST(N'2024-11-18T16:30:32.497' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b47889ec-7070-4f6d-b6bb-cbf72d029aff', N'1131117', N'11310', N'2464  ', 762807, 796115, 633450, -4.1838178634643555, 20.421028137207031, 6122729, 7381858, -17.057073593139648, N'-', CAST(N'2024-11-18T16:30:32.873' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'0484a32e-557d-4cc4-a01a-cc05497a8386', N'1131117', N'11310', N'2429  ', 33997, 31408, 23811, 8.2431230545043945, 42.778549194335938, 236037, 434804, -45.714160919189453, N'本公司已於112年12月30日處分嵩達光電科技股份有限公司，自該日後嵩達營收將不納入合併。', CAST(N'2024-11-18T16:30:32.813' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'56b8f583-5983-4fdb-86aa-cc4839298ec0', N'1131117', N'11310', N'4999  ', 168482, 180477, 150391, -6.6462764739990234, 12.02931022644043, 1620444, 1589353, 1.9562047719955444, N'-', CAST(N'2024-11-18T16:30:33.370' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'cf649308-07c4-479a-8aac-ccaa076e7424', N'1131117', N'11310', N'2548  ', 11905, 374214, 1184558, -96.81866455078125, -98.994987487792969, 7178433, 10388589, -30.900789260864258, N'公司截至10月底累計營收較去年同期減少，係因本年度認列交屋金額較低所致。', CAST(N'2024-11-18T16:30:33.007' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'edb34385-9d62-43a3-b26d-ccc21e6c4411', N'1131117', N'11310', N'3652  ', 185924, 208713, 160403, -10.918821334838867, 15.910550117492676, 2003541, 1851927, 8.186823844909668, N'-', CAST(N'2024-11-18T16:30:33.280' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'4da6d1f8-5eb3-46d6-86bb-ccd0db6e42c6', N'1131117', N'11310', N'1103  ', 228409, 249964, 257343, -8.6232414245605469, -11.243359565734863, 2441588, 2372574, 2.9088239669799805, N'-', CAST(N'2024-11-18T16:30:31.147' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'914f686c-6f97-4a5d-a720-cd36f669b9e3', N'1131117', N'11310', N'2316  ', 344128, 242331, 270309, 42.007419586181641, 27.309116363525391, 2753034, 2923976, -5.8462176322937012, N'-', CAST(N'2024-11-18T16:30:32.570' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'4d133c4c-c69a-4541-8912-cd9739ee6fa0', N'1131117', N'11310', N'6757  ', 1302540, 1264210, 1220180, 3.031933069229126, 6.7498235702514648, 13939376, 10269428, 35.73663330078125, N'-', CAST(N'2024-11-18T16:30:33.977' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'39c57036-9a99-4746-a00f-cdef3d296e33', N'1131117', N'11310', N'9937  ', 1950957, 2028502, 2086324, -3.8227717876434326, -6.4883017539978027, 20035968, 20429194, -1.9248238801956177, N'-', CAST(N'2024-11-18T16:30:34.200' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'01bb5d35-32e9-4e90-812b-cdf7fbcea8ce', N'1131117', N'11310', N'6165  ', 234698, 232381, 245957, 0.99706947803497314, -4.577629566192627, 2372047, 2250366, 5.4071650505065918, N'-', CAST(N'2024-11-18T16:30:33.453' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'405e2480-45da-4b15-835f-ce8d76808300', N'1131117', N'11310', N'2478  ', 420735, 421211, 401319, -0.11300749331712723, 4.8380465507507324, 4089352, 3836197, 6.5991134643554688, N'-', CAST(N'2024-11-18T16:30:32.900' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'fd7facf6-085b-4542-ac6b-cec4f1f1f8f8', N'1131117', N'11310', N'2465  ', 348625, 325865, 419757, 6.9844875335693359, -16.945995330810547, 3016071, 2974050, 1.4129217863082886, N'-', CAST(N'2024-11-18T16:30:32.877' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3f0d539c-4777-48a3-9bf5-cf34467f7fac', N'1131117', N'11310', N'1452  ', 145346, 154158, 117060, -5.7162132263183594, 24.163677215576172, 1388018, 951781, 45.833759307861328, N'-', CAST(N'2024-11-18T16:30:31.950' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'4b279504-b58f-4e10-9d5f-cf760c731753', N'1131117', N'11310', N'2457  ', 775604, 821693, 1030367, -5.6090292930603027, -24.725461959838867, 8680711, 10446212, -16.9008731842041, N'-', CAST(N'2024-11-18T16:30:32.853' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'42ac16b2-1a3b-4317-8d00-cf77b0e00880', N'1131117', N'11310', N'1304  ', 3957696, 4138650, 4296205, -4.3722953796386719, -7.8792562484741211, 42345701, 43733211, -3.1726689338684082, N'-', CAST(N'2024-11-18T16:30:31.533' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'454ebac0-c21c-4dae-a1e7-cf845ed5b8d1', N'1131117', N'11310', N'2642  ', 294808, 335803, 315960, -12.208050727844238, -6.6945180892944336, 3337907, 3451415, -3.2887380123138428, N'-', CAST(N'2024-11-18T16:30:33.053' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3fd814f1-f901-4e07-aa21-cfa500bb3611', N'1131117', N'11310', N'2462  ', 325014, 370385, 362130, -12.249686241149902, -10.249358177185059, 3347845, 3235826, 3.4618363380432129, N'-', CAST(N'2024-11-18T16:30:32.870' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c5124a30-7896-481a-82ba-cfadff1fc0ba', N'1131117', N'11310', N'1220  ', 356483, 273209, 289053, 30.479961395263672, 23.327901840209961, 2771099, 2643847, 4.8131380081176758, N'-', CAST(N'2024-11-18T16:30:31.313' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'1b402172-44da-49b1-b6a4-d05427cd7e73', N'1131117', N'11310', N'6216  ', 34060, 106524, 49440, -68.025985717773438, -31.108413696289062, 1027617, 658413, 56.074832916259766, N'訂單增加', CAST(N'2024-11-18T16:30:33.710' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f412b949-41e0-4b68-afe2-d06634153a0c', N'1131117', N'11310', N'9955  ', 98950, 88398, 99903, 11.936922073364258, -0.95392531156539917, 1012959, 964450, 5.0297060012817383, N'-', CAST(N'2024-11-18T16:30:34.207' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'a04ceb64-3565-4d08-bc38-d0707c3fed56', N'1131117', N'11310', N'5471  ', 217378, 221416, 247673, -1.823716402053833, -12.231854438781738, 2245214, 2147380, 4.5559706687927246, N'-', CAST(N'2024-11-18T16:30:33.383' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'6aa66c68-b2d2-42fc-a87d-d0f4a526e031', N'1131117', N'11310', N'2408  ', 2182240, 2584927, 2668030, -15.578273773193359, -18.207817077636719, 29738813, 23856358, 24.657808303833008, N'-', CAST(N'2024-11-18T16:30:32.780' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'48115c07-b141-4987-af2c-d11a3fbc2434', N'1131117', N'11310', N'6552  ', 116184, 142201, 172459, -18.295932769775391, -32.630943298339844, 1675841, 1469937, 14.007675170898438, N'-', CAST(N'2024-11-18T16:30:33.907' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8515749c-7d8a-4635-bf67-d1b2817f97a6', N'1131117', N'11310', N'6177  ', 4258370, 162846, 3047318, 2514.967529296875, 39.741569519042969, 9724498, 8539807, 13.872573852539063, N'-', CAST(N'2024-11-18T16:30:33.600' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'4a25f07a-05d8-4a77-97ce-d1e9d5ef2fa8', N'1131117', N'11310', N'2493  ', 298272, 343822, 274712, -13.248134613037109, 8.5762548446655273, 3032387, 2758696, 9.9210281372070312, N'-', CAST(N'2024-11-18T16:30:32.927' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'36f5176b-89dc-4c7f-91af-d20b9aabcd0f', N'1131117', N'11310', N'1460  ', 789112, 742908, 750216, 6.2193436622619629, 5.1846399307250977, 6593669, 6305544, 4.56939172744751, N'-', CAST(N'2024-11-18T16:30:31.980' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'a759dacc-b222-4ee1-ba49-d2349491fe59', N'1131117', N'11310', N'2351  ', 853127, 914431, 871698, -6.7040596008300781, -2.1304397583007812, 8931394, 9129208, -2.166825532913208, N'-', CAST(N'2024-11-18T16:30:32.683' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'040bb664-91cb-41ee-abee-d27fd8c8234a', N'1131117', N'11310', N'1760  ', 130388, 130967, 141151, -0.44209611415863037, -7.6251673698425293, 1637495, 1494360, 9.5783481597900391, N'-', CAST(N'2024-11-18T16:30:32.297' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'032cd0d7-6899-4cdc-a898-d2c52f64a164', N'1131117', N'11310', N'9931  ', 109073, 116226, 100696, -6.1543889045715332, 8.3190994262695312, 1724625, 1021587, 68.818222045898438, N'子公司認列售屋收入所致', CAST(N'2024-11-18T16:30:34.193' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f385d965-afc4-4fbb-84d8-d33c86231ac4', N'1131117', N'11310', N'2106  ', 2824515, 2848764, 2965013, -0.85121124982833862, -4.7385292053222656, 29032689, 28827365, 0.71225380897521973, N'-', CAST(N'2024-11-18T16:30:32.433' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'64f2bc16-ffd0-4fc3-96f7-d368b7db4455', N'1131117', N'11310', N'8464  ', 2641323, 2527173, 2362633, 4.5169048309326172, 11.795738220214844, 24227639, 22040598, 9.9227838516235352, N'-', CAST(N'2024-11-18T16:30:34.150' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'08c4fa92-08e5-4626-a3ac-d375e331577f', N'1131117', N'11310', N'2535  ', 915441, 1114789, 1319972, -17.88212776184082, -30.646938323974609, 12099364, 11701937, 3.3962497711181641, N'-', CAST(N'2024-11-18T16:30:32.973' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3d2eb01f-16e1-4fed-9a20-d37c769488ac', N'1131117', N'11310', N'1726  ', 819809, 776108, 814687, 5.6307883262634277, 0.62870770692825317, 7688458, 7642724, 0.59839922189712524, N'-', CAST(N'2024-11-18T16:30:32.270' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7258d95d-2b23-406d-b9b6-d3920fb60132', N'1131117', N'11310', N'2417  ', 233033, 264486, 258688, -11.892123222351074, -9.9173517227172852, 2758596, 2719622, 1.4330668449401856, N'-', CAST(N'2024-11-18T16:30:32.787' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ad2268d1-c56b-494b-ade0-d4a7a518f739', N'1131117', N'11310', N'8163  ', 2092763, 1766134, 2200175, 18.494010925292969, -4.8819751739501953, 17752659, 21932881, -19.05915641784668, N'-', CAST(N'2024-11-18T16:30:34.110' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'5d2a4a34-7783-4f15-8995-d4af61132744', N'1131117', N'11310', N'2395  ', 5534571, 4950809, 5126731, 11.791244506835938, 7.9551668167114258, 49007105, 54556822, -10.172361373901367, N'-', CAST(N'2024-11-18T16:30:32.767' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'42d430e9-90c3-4920-9e88-d4fdf029fd78', N'1131117', N'11310', N'2727  ', 1727514, 1783234, 1800124, -3.1246600151062012, -4.0336108207702637, 18395505, 18554135, -0.854957640171051, N'-', CAST(N'2024-11-18T16:30:33.080' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c10befb9-c141-406d-9fbb-d5379fda4370', N'1131117', N'11310', N'6024  ', 211861, 230428, 196606, -8.05761432647705, 7.7591733932495117, 2230869, 1869230, 19.346950531005859, N'-', CAST(N'2024-11-18T16:30:33.403' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3f32a8cd-e8d9-4283-bdaf-d5ea6561a387', N'1131117', N'11310', N'6862  ', 187579, 206118, 144595, -8.9943628311157227, 29.727169036865234, 1829628, 1295887, 41.187309265136719, N'-', CAST(N'2024-11-18T16:30:34.027' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'681c28ba-9d05-4d99-a44f-d6096e2644f7', N'1131117', N'11310', N'2413  ', 299719, 246861, 323285, 21.412050247192383, -7.2895431518554688, 2582427, 3920086, -34.123207092285156, N'-', CAST(N'2024-11-18T16:30:32.783' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'6bd46221-dc64-4a1c-ad66-d64d0998cb51', N'1131117', N'11310', N'6201  ', 265649, 285978, 267078, -7.108588695526123, -0.5350496768951416, 2638484, 2701185, -2.3212404251098633, N'-', CAST(N'2024-11-18T16:30:33.667' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c34309f6-f1b4-4f3d-8c1b-d6cffde12d9f', N'1131117', N'11310', N'6585  ', 249096, 243316, 263317, 2.375511646270752, -5.4007148742675781, 2726447, 2264467, 20.401268005371094, N'-', CAST(N'2024-11-18T16:30:33.920' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9b11f8fa-a4f7-421f-8287-d7309331fbed', N'1131117', N'11310', N'6807  ', 495031, 494268, 317764, 0.15436969697475433, 55.785739898681641, 4053453, 3045694, 33.087993621826172, N'主要產品熱銷訂單增加', CAST(N'2024-11-18T16:30:34.010' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3250ad1b-bf6f-47a2-895a-d7ed00e6716f', N'1131117', N'11310', N'6666  ', 70009, 108839, 54439, -35.676548004150391, 28.600818634033203, 957904, 782456, 22.422731399536133, N'-', CAST(N'2024-11-18T16:30:33.940' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'83d57e3b-cdc3-4e1d-9dfd-d8249dfbeff5', N'1131117', N'11310', N'2423  ', 260011, 216200, 257676, 20.264106750488281, 0.906176745891571, 2248386, 2430784, -7.5036697387695312, N'-', CAST(N'2024-11-18T16:30:32.803' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f0815017-a53d-48af-a04e-d88e3d9aee1d', N'1131117', N'11310', N'2108  ', 994474, 1123242, 664410, -11.463958740234375, 49.677761077880859, 9383000, 7510428, 24.932960510253906, N'-', CAST(N'2024-11-18T16:30:32.440' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'cc1cb12e-819d-476a-89da-d8a7a808c28d', N'1131117', N'11310', N'2597  ', 2170653, 2187245, 1757922, -0.75857985019683838, 23.47834587097168, 21189076, 17977832, 17.86224365234375, N'-', CAST(N'2024-11-18T16:30:33.010' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'081f0050-e01c-477a-9470-d8ad429670a1', N'1131117', N'11310', N'1802  ', 3650991, 3225767, 4125566, 13.18210506439209, -11.503270149230957, 34593010, 37720067, -8.2901678085327148, N'-', CAST(N'2024-11-18T16:30:32.317' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'945443e2-4298-42a0-89f8-d8ddb30daddf', N'1131117', N'11310', N'8249  ', 417006, 376596, 157848, 10.730331420898438, 164.18199157714844, 3420935, 2697866, 26.801515579223633, N'本月營收較去年同期增加，主要係因客戶需求較去年同期增加', CAST(N'2024-11-18T16:30:34.120' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b5bbf31d-685d-4270-a8df-d8f20f422435', N'1131117', N'11310', N'6606  ', 48751, 58037, 52668, -16.000137329101562, -7.4371533393859863, 599729, 667536, -10.157804489135742, N'-', CAST(N'2024-11-18T16:30:33.930' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'39361b1c-887a-4438-be1a-d9180d7c979f', N'1131117', N'11310', N'3712  ', 3985696, 1762220, 1979006, 126.17471313476563, 101.39888763427734, 19083200, 12242743, 55.873565673828125, N'主要係因子公司本月承接工程案件依進度認列收入', CAST(N'2024-11-18T16:30:33.293' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'dbe6ed78-1e38-4bdb-be2a-d91d3505924a', N'1131117', N'11310', N'3041  ', 137394, 140122, 139937, -1.9468748569488525, -1.8172463178634644, 1370182, 1143343, 19.839977264404297, N'無', CAST(N'2024-11-18T16:30:33.200' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'2cf32f44-55d4-456f-aec3-d952b227168c', N'1131117', N'11310', N'3588  ', 120059, 140750, 110142, -14.700532913208008, 9.00383186340332, 1238540, 923341, 34.136791229248047, N'-', CAST(N'2024-11-18T16:30:33.270' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'1c6b55e3-1794-45b7-bd6b-d983a2ac19af', N'1131117', N'11310', N'2363  ', 140674, 176923, 12668, -20.488574981689453, 1010.4673461914063, 437879, 164686, 165.88720703125, N'113年9月1日起新增合併個體聯暻半導體(山東)有限公司營收', CAST(N'2024-11-18T16:30:32.713' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'696f900f-d5aa-47c9-a09a-d9ae5afb1947', N'1131117', N'11310', N'9928  ', 74869, 69736, 89669, 7.3606171607971191, -16.505146026611328, 732059, 755143, -3.0569045543670654, N'-', CAST(N'2024-11-18T16:30:34.190' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'eed24b6d-b0e0-41ee-b062-d9cc7201112b', N'1131117', N'11310', N'9946  ', 19325, 13385, 111223, 44.378036499023438, -82.625, 1361779, 713435, 90.876396179199219, N'累月營收較去年同期增加，係因預售建案完工交屋入帳所致；本月營收較去年同期減少，係因本月過戶交屋戶數較去年同期減少', CAST(N'2024-11-18T16:30:34.207' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'4c72acca-463f-4384-985c-d9e29578e692', N'1131117', N'11310', N'8996  ', 346058, 381938, 284982, -9.3941946029663086, 21.431528091430664, 3353732, 3711027, -9.6279277801513672, N'-', CAST(N'2024-11-18T16:30:34.163' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd62ea364-a158-48f2-b702-da4c6b6b09ba', N'1131117', N'11310', N'1598  ', 635252, 571519, 695978, 11.151510238647461, -8.725275993347168, 5483077, 6111658, -10.284950256347656, N'-', CAST(N'2024-11-18T16:30:32.167' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'02d1198c-f159-4cad-bd02-dadcf96f5bac', N'1131117', N'11310', N'1473  ', 407687, 471729, 401621, -13.576015472412109, 1.5103791952133179, 6182246, 5333141, 15.921293258666992, N'-', CAST(N'2024-11-18T16:30:32.013' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9414e83d-443f-4e30-aeab-daee88e1bc56', N'1131117', N'11310', N'2357  ', 49931512, 62060474, 42124331, -19.543779373168945, 18.533660888671875, 483095808, 404277498, 19.496091842651367, N'-', CAST(N'2024-11-18T16:30:32.697' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'0ebada4d-8f21-4183-b51c-daf24f640732', N'1131117', N'11310', N'1432  ', 94623, 98050, 111903, -3.4951555728912354, -15.44194507598877, 1060399, 1118157, -5.1654644012451172, N'-', CAST(N'2024-11-18T16:30:31.800' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'5ae8523b-2983-48c1-9860-db27c94e2454', N'1131117', N'11310', N'4569  ', 140049, 119101, 124419, 17.588434219360352, 12.562390327453613, 1211944, 998584, 21.366254806518555, N'-', CAST(N'2024-11-18T16:30:33.330' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'118d4d80-f70d-4aea-ace7-dc144ad60433', N'1131117', N'11310', N'6861  ', 161255, 166690, 169148, -3.2605435848236084, -4.6663274765014648, 1613239, 1501290, 7.4568538665771484, N'-', CAST(N'2024-11-18T16:30:34.027' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd73c058e-ef0a-4cfb-8747-dc503ea866a8', N'1131117', N'11310', N'3550  ', 291823, 273887, 309950, 6.5486860275268555, -5.8483624458312988, 2758506, 3091764, -10.778895378112793, N'累計營業收入較去年減少，主係自去年第四季開始收縮減少銅線廠交易所致。', CAST(N'2024-11-18T16:30:33.267' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c9e48772-5933-42c3-a029-dc5b96d7b37b', N'1131117', N'11310', N'2739  ', 414043, 396536, 413923, 4.4149837493896484, 0.028990898281335831, 4046323, 3862854, 4.7495713233947754, N'-', CAST(N'2024-11-18T16:30:33.083' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7d071f2a-1bbb-48ab-8109-dc8f91ee6981', N'1131117', N'11310', N'3023  ', 2805869, 2858220, 2603676, -1.8315944671630859, 7.7656745910644531, 27683847, 28145843, -1.641435980796814, N'-', CAST(N'2024-11-18T16:30:33.180' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ae0db990-1a3b-4ceb-bb53-dcda3b7d30dc', N'1131117', N'11310', N'2540  ', 1808193, 993268, 658427, 82.0448226928711, 174.62315368652344, 9310602, 6074017, 53.285739898681641, N'本月營收增加，主係建案完工交屋所致。', CAST(N'2024-11-18T16:30:32.990' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'a105984c-f280-4d42-8377-dd0275609c67', N'1131117', N'11310', N'1582  ', 656070, 739015, 807820, -11.223723411560059, -18.785125732421875, 7805068, 7316358, 6.6796894073486328, N'-', CAST(N'2024-11-18T16:30:32.150' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'6c28ccd6-775d-40d9-87b0-dd1c96665c09', N'1131117', N'11310', N'2451  ', 784582, 819543, 912945, -4.2659139633178711, -14.060320854187012, 8365738, 8718427, -4.0453281402587891, N'-', CAST(N'2024-11-18T16:30:32.847' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'31976bdf-cf43-4f64-9f56-dd1f599619d0', N'1131117', N'11310', N'4771  ', 311009, 259008, 294506, 20.076986312866211, 5.6036210060119629, 2551257, 2060144, 23.838769912719727, N'-', CAST(N'2024-11-18T16:30:33.343' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b957c7d3-821e-4e13-9cc4-dd4c1be4fe8c', N'1131117', N'11310', N'9907  ', 3543881, 4125541, 2383443, -14.0989990234375, 48.687465667724609, 37023339, 29664288, 24.807779312133789, N'-', CAST(N'2024-11-18T16:30:34.170' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'0f332f85-cb1e-44ac-bf82-dd81041bb7db', N'1131117', N'11310', N'9938  ', 1312742, 1437236, 1058184, -8.6620426177978516, 24.056118011474609, 12909222, 10346244, 24.772062301635742, N'-', CAST(N'2024-11-18T16:30:34.200' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f47583d7-f16c-417c-91f5-ddb06a369ba5', N'1131117', N'11310', N'6133  ', 100517, 95656, 74728, 5.0817513465881348, 34.510490417480469, 997969, 836921, 19.242916107177734, N'無', CAST(N'2024-11-18T16:30:33.410' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'954dc947-c035-4aeb-b994-ddbcc08c41d3', N'1131117', N'11310', N'2450  ', 3353952, 2761710, 3069122, 21.444757461547852, 9.28050422668457, 26719028, 25979864, 2.8451418876647949, N'-', CAST(N'2024-11-18T16:30:32.843' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'cd5affb3-acad-4993-9f11-de04a3f18335', N'1131117', N'11310', N'1423  ', 4924, 5322, 9973, -7.4783916473388672, -50.626693725585938, 93436, 101248, -7.7157077789306641, N'高單價羊毛紡織品需求未見明顯回升，致客戶下單提貨有些許延遲。', CAST(N'2024-11-18T16:30:31.793' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'91fb0cf4-9ec1-432b-8d35-decbc02558fa', N'1131117', N'11310', N'1514  ', 715808, 696218, 938539, 2.8137738704681396, -23.731672286987305, 6936763, 7035734, -1.4066904783248901, N'-', CAST(N'2024-11-18T16:30:32.067' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'834775cd-31a1-4fec-a0f5-def66247c177', N'1131117', N'11310', N'1436  ', 544059, 1524020, 860396, -64.301055908203125, -36.766441345214844, 6669398, 1157727, 476.076904296875, N'本月營收較去年同期減少，係去年同期認列處分楊梅區土地，本期無此事；累計營收較去年同期增加，係今年交屋數量較去年同期增加。', CAST(N'2024-11-18T16:30:31.820' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'5c6ad3cf-5fb8-4db2-b051-df2b7482b93a', N'1131117', N'11310', N'1467  ', 445092, 537396, 336060, -17.17616081237793, 32.444206237792969, 4154267, 3865630, 7.4667520523071289, N'-', CAST(N'2024-11-18T16:30:32.003' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'946be9b3-59d1-44b1-9e5b-df2de8b4ada9', N'1131117', N'11310', N'2359  ', 312052, 334487, 322795, -6.7072858810424805, -3.3281185626983643, 2816372, 3472414, -18.892965316772461, N'-', CAST(N'2024-11-18T16:30:32.703' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'4d4b0a2c-238c-477e-a77d-df411f431e09', N'1131117', N'11310', N'2415  ', 159913, 169890, 220132, -5.8726234436035156, -27.355859756469727, 1922047, 1837513, 4.6004571914672852, N'-', CAST(N'2024-11-18T16:30:32.787' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'0b45c6f9-2276-4582-a087-df417b1b7a23', N'1131117', N'11310', N'1414  ', 39202, 37721, 46067, 3.9261949062347412, -14.902207374572754, 444468, 467886, -5.0050654411315918, N'-', CAST(N'2024-11-18T16:30:31.767' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3f611538-56c0-48e7-8f22-dfc98b5ed0ca', N'1131117', N'11310', N'6533  ', 153204, 233249, 87927, -34.317401885986328, 74.239997863769531, 1073403, 739758, 45.101913452148438, N'本期收入去年增加主要係因矽智財授權收入增加所致。', CAST(N'2024-11-18T16:30:33.893' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'303b1e7c-3992-40c4-8ca5-dfcb68d833ed', N'1131117', N'11310', N'6794  ', 2620, 5890, 1015, -55.517826080322266, 158.12808227539063, 23669, 17574, 34.681915283203125, N'本月營業收入較去年同期增加，主係勞務收入增加所致。', CAST(N'2024-11-18T16:30:34.000' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'a0de30e0-6eb7-4f03-a2ad-dfd370496c92', N'1131117', N'11310', N'5880  ', 4842890, 5456841, 4670175, -11.251033782958984, 3.6982553005218506, 55673010, 50769384, 9.6586284637451172, N'-', CAST(N'2024-11-18T16:30:33.400' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'bf111225-d0ea-486b-bbdc-dfd52c8ddd36', N'1131117', N'11310', N'3605  ', 848642, 925757, 713004, -8.3299398422241211, 19.023456573486328, 7935141, 7031094, 12.857842445373535, N'-', CAST(N'2024-11-18T16:30:33.273' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'fb8d4c29-9ea3-4229-90b6-e010834817f3', N'1131117', N'11310', N'3530  ', 137982, 208190, 112482, -33.723041534423828, 22.6702938079834, 1481311, 1336992, 10.794305801391602, N'-', CAST(N'2024-11-18T16:30:33.260' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'0491816c-af14-4f0d-8051-e023db9363ec', N'1131117', N'11310', N'8021  ', 315381, 322013, 262760, -2.0595440864562988, 20.026260375976562, 2903667, 2228797, 30.279563903808594, N'-', CAST(N'2024-11-18T16:30:34.077' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'fea7868c-3930-4a0a-9b2b-e03a01380b53', N'1131117', N'11310', N'2888  ', -2429484, 54748, NULL, -4537.57568359375, -64.8750991821289, 28732196, 28995960, -0.90965777635574341, N'本月營業收入相較去年減少，主係投資相關淨收益減少所致。', CAST(N'2024-11-18T16:30:33.137' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c9fe87b0-57c4-4764-a844-e0d8654d96c5', N'1131117', N'11310', N'3025  ', 43317, 89129, 34343, -51.399658203125, 26.13050651550293, 527825, 434417, 21.501920700073242, N'-', CAST(N'2024-11-18T16:30:33.183' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'559d9538-b4c5-4d17-adcc-e11e10d39f23', N'1131117', N'11310', N'4164  ', 237525, 483895, 703607, -50.913936614990234, -66.241806030273438, 2816643, 3127735, -9.9462394714355469, N'主係因去年同期有驗收大型儀器設備，而本月並無驗收大型儀器設備，故使得本月營收較去年同期月份大幅減少。', CAST(N'2024-11-18T16:30:33.310' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9600bf0f-5fc1-4b3f-ac6d-e13872aa520c', N'1131117', N'11310', N'2344  ', 6097945, 7231483, 6297972, -15.675042152404785, -3.1760542392730713, 69015710, 62130381, 11.082064628601074, N'-', CAST(N'2024-11-18T16:30:32.667' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f38cf9cb-6758-4da3-a31f-e18c7694e3b6', N'1131117', N'11310', N'3094  ', 11501, 14524, 18295, -20.813825607299805, -37.135829925537109, 134025, 201953, -33.635547637939453, N'-', CAST(N'2024-11-18T16:30:33.223' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7ba9d28d-b287-40b9-ac7e-e19f0e709dc3', N'1131117', N'11310', N'3026  ', 1080046, 1108042, 1030852, -2.5266189575195312, 4.77216911315918, 10672818, 11346396, -5.936492919921875, N'-', CAST(N'2024-11-18T16:30:33.183' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8899a029-a893-4f7b-9037-e20281e6b12c', N'1131117', N'11310', N'3305  ', 705365, 764281, 468499, -7.7086830139160156, 50.558486938476562, 6556746, 5118595, 28.096597671508789, N'銷售量增加及原料價格上漲', CAST(N'2024-11-18T16:30:33.230' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'a5f42be7-c612-4870-a7cd-e220315b7bcd', N'1131117', N'11310', N'2017  ', 273966, 307510, 171397, -10.908263206481934, 59.842937469482422, 2746695, 2519857, 9.002018928527832, N'去年本公司因歲修及景氣低迷關係，以致與前年相比營業額下降；今年度因景氣稍微好轉，營業額稍有提升。', CAST(N'2024-11-18T16:30:32.373' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'475e53a4-3600-4f3d-b6b0-e2208e806c61', N'1131117', N'11310', N'8271  ', 703680, 617432, 818876, 13.968825340270996, -14.067575454711914, 6432157, 6302118, 2.0634174346923828, N'-', CAST(N'2024-11-18T16:30:34.127' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'20a1317c-e4bc-4132-8cd2-e23297ebf922', N'1131117', N'11310', N'6505  ', 45451116, 53324540, 64929770, -14.765104293823242, -29.99957275390625, 560454109, 601627711, -6.8437008857727051, N'-', CAST(N'2024-11-18T16:30:33.880' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'a543a6c0-c70f-4fb2-9547-e28ec22aaaf8', N'1131117', N'11310', N'2376  ', 25771684, 26735874, 16764958, -3.6063530445098877, 53.7235221862793, 225291532, 108133819, 108.34511566162109, N'AI訂單需求暢旺', CAST(N'2024-11-18T16:30:32.740' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7972b81e-6e89-49fe-9ff2-e293f5bd0bc6', N'1131117', N'11310', N'1616  ', 417503, 487542, 365063, -14.365736961364746, 14.364644050598145, 3767620, 3266706, 15.333917617797852, N'-', CAST(N'2024-11-18T16:30:32.193' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9cc45f13-65f7-4854-83d1-e2a77e5171d8', N'1131117', N'11310', N'6742  ', 55746, 60729, 55249, -8.2053050994873047, 0.89956378936767578, 566681, 455863, 24.30949592590332, N'-', CAST(N'2024-11-18T16:30:33.967' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'01e16ece-0754-42b7-8e8a-e2ec8cb7c706', N'1131117', N'11310', N'1903  ', 11923, 10993, 13614, 8.4599294662475586, -12.421036720275879, 128003, 142629, -10.254576683044434, N'-', CAST(N'2024-11-18T16:30:32.337' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'398cdf04-d395-41dd-a985-e2f3afa5160c', N'1131117', N'11310', N'2313  ', 6640127, 6463377, 7318549, 2.7346384525299072, -9.2698974609375, 59272005, 54270657, 9.21556568145752, N'-', CAST(N'2024-11-18T16:30:32.557' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'65fdf939-052e-4b12-b6d1-e30c01eba642', N'1131117', N'11310', N'4906  ', 2014560, 1640092, 1821600, 22.832134246826172, 10.59288501739502, 21559922, 22057140, -2.2542269229888916, N'-', CAST(N'2024-11-18T16:30:33.347' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd3fa8ef2-3643-48db-b4e4-e33b6d594d88', N'1131117', N'11310', N'8110  ', 749013, 640424, 606185, 16.95579719543457, 23.561784744262695, 6600678, 5898913, 11.896513938903809, N'-', CAST(N'2024-11-18T16:30:34.100' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'533a073e-4d9c-4237-8975-e363267a2d25', N'1131117', N'11310', N'3004  ', 287348, 284080, 277839, 1.1503801345825195, 3.4224855899810791, 2856942, 2484689, 14.9818754196167, N'-', CAST(N'2024-11-18T16:30:33.170' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'de962e8e-c620-49c4-ab0c-e3f129ac30e5', N'1131117', N'11310', N'9917  ', 1485986, 1507922, 1451358, -1.4547171592712402, 2.3859033584594727, 14576264, 14076190, 3.5526232719421387, N'-', CAST(N'2024-11-18T16:30:34.180' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'886dcd66-8c37-4f33-b40c-e40dd42637a0', N'1131117', N'11310', N'2355  ', 1406315, 1372888, 1443797, 2.4347944259643555, -2.5960712432861328, 13741462, 13849761, -0.78195571899414062, N'-', CAST(N'2024-11-18T16:30:32.693' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'bae995d4-f24b-4b39-885b-e41e38ae2477', N'1131117', N'11310', N'3419  ', 125954, 123960, 113287, 1.6085834503173828, 11.18133544921875, 1209151, 1198173, 0.91622829437255859, N'-', CAST(N'2024-11-18T16:30:33.243' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'dd31b723-e1a3-437d-a036-e4bee46bf5d1', N'1131117', N'11310', N'3060  ', 264822, 325945, 262869, -18.75255012512207, 0.74295562505722046, 2841770, 2144129, 32.537269592285156, N'-', CAST(N'2024-11-18T16:30:33.220' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'afa80c9e-50e2-4388-a483-e4fa0971c81e', N'1131117', N'11310', N'6214  ', 2879140, 3389132, 2773788, -15.04786491394043, 3.7981274127960205, 31177281, 27633419, 12.824551582336426, N'-', CAST(N'2024-11-18T16:30:33.700' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'39b7a528-de77-4ea5-a16c-e553ecd3db66', N'1131117', N'11310', N'2349  ', 520174, 585264, 713874, -11.121477127075195, -27.133640289306641, 6130925, 6336667, -3.2468488216400146, N'因應集團控制力調整，鈺德科技自2024年10月1日起，不納入合併個體改採用權益法認列，致本期合併營收不包含鈺德科技之合併營收。', CAST(N'2024-11-18T16:30:32.680' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'5d55c35a-119a-443a-b2e8-e5857edd8ebe', N'1131117', N'11310', N'3016  ', 342462, 350941, 346515, -2.4160757064819336, -1.1696463823318481, 3475065, 3556749, -2.2965915203094482, N'-', CAST(N'2024-11-18T16:30:33.177' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'2f0ca59a-06f9-4a3e-b57d-e59d57736ea3', N'1131117', N'11310', N'2910  ', 39861, 47654, 40685, -16.353296279907227, -2.0253164768218994, 497980, 462496, 7.6722826957702637, N'-', CAST(N'2024-11-18T16:30:33.160' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'4beac2a4-ba1e-4dce-8f6c-e61281950121', N'1131117', N'11310', N'2236  ', 153188, 140825, 212007, 8.77898120880127, -27.743894577026367, 1395740, 1514603, -7.8477988243103027, N'-', CAST(N'2024-11-18T16:30:32.480' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c50d90f6-d47f-413c-9f6f-e64196166683', N'1131117', N'11310', N'2482  ', 51537, 51935, 83149, -0.76634252071380615, -38.018497467041016, 510676, 1286130, -60.293594360351562, N'主要係客戶需求減少所致', CAST(N'2024-11-18T16:30:32.907' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'16a062ee-e55b-4bec-a857-e64314752123', N'1131117', N'11310', N'8114  ', 1281219, 1204691, 788026, 6.3525004386901855, 62.585880279541016, 10282260, 8256817, 24.530553817749023, N'主係O2O Solutions逐步回溫與Embedded Foundry需求強勁所致。', CAST(N'2024-11-18T16:30:34.103' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9c82f941-a9a3-4f44-bc6e-e6c6c5251a27', N'1131117', N'11310', N'8482  ', 341769, 308330, 291927, 10.845198631286621, 17.073446273803711, 3038807, 3039074, -0.0087855709716677666, N'-', CAST(N'2024-11-18T16:30:34.157' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'2a606244-1d4a-4818-9ec3-e6d5caecccc8', N'1131117', N'11310', N'3557  ', 362741, 343772, 359627, 5.5179014205932617, 0.86589717864990234, 4847407, 3885243, 24.764577865600586, N'-', CAST(N'2024-11-18T16:30:33.267' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3b052b05-a7bc-4221-aaf5-e6e49be52d81', N'1131117', N'11310', N'2436  ', 279502, 290543, 288747, -3.8001260757446289, -3.2017648220062256, 2537934, 2380264, 6.6240549087524414, N'-', CAST(N'2024-11-18T16:30:32.827' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ee9de9d1-06be-4485-b6c2-e6e88f9b9b3c', N'1131117', N'11310', N'3059  ', 646789, 644493, 807614, 0.35624903440475464, -19.913597106933594, 5831807, 7565315, -22.913890838623047, N'-', CAST(N'2024-11-18T16:30:33.217' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'4ff3151b-2e24-4eae-bd83-e6f14853d8dc', N'1131117', N'11310', N'8466  ', 372925, 401491, 180465, -7.1149787902832031, 106.64672088623047, 3178593, 2223290, 42.967987060546875, N'本年度出貨數增加', CAST(N'2024-11-18T16:30:34.150' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9fef27ff-af22-467a-b4b0-e6f6abdaeb83', N'1131117', N'11310', N'3591  ', 211416, 231507, 169440, -8.67835521697998, 24.773370742797852, 2094754, 1628836, 28.604352951049805, N'-', CAST(N'2024-11-18T16:30:33.270' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f7b12cd0-ee0d-4e09-bc3f-e71d3fc3ef42', N'1131117', N'11310', N'6550  ', 16012, 3214, 618, 398.19540405273438, 2490.9384765625, 86865, 3200, 2614.53125, N'美國及台灣子公司CDMO代工收入。本月增減變動達50%主係因收購之子公司CDMO代工收入所致。', CAST(N'2024-11-18T16:30:33.903' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'bd4f427b-6714-4972-8d0b-e721795096c1', N'1131117', N'11310', N'6625  ', 184545, 514199, 295851, -64.110198974609375, -37.622318267822266, 2418453, 2085528, 15.963582992553711, N'-', CAST(N'2024-11-18T16:30:33.930' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8980a0d4-8870-4126-b04c-e725d56e6631', N'1131117', N'11310', N'4564  ', 105333, 71381, 99786, 47.564479827880859, 5.5588960647583008, 872047, 1116704, -21.908849716186523, N'-', CAST(N'2024-11-18T16:30:33.327' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'4001250d-bb63-44e1-a656-e767d5082cb6', N'1131117', N'11310', N'6534  ', 71962, 54486, 17657, 32.074295043945312, 307.55508422851562, 1432313, 1388754, 3.1365525722503662, N'本月較去年同期增加係部分客戶為補齊存貨所致。', CAST(N'2024-11-18T16:30:33.897' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ca478089-cdf7-4581-a1cd-e783d1a84955', N'1131117', N'11310', N'5215  ', 231023, 234577, 252603, -1.5150675773620606, -8.5430498123168945, 2225910, 2068702, 7.5993547439575195, N'-', CAST(N'2024-11-18T16:30:33.370' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd6ae7abe-e849-4f3c-bde9-e7ce521b4576', N'1131117', N'11310', N'6933  ', 510622, 315949, 477798, 61.615322113037109, 6.8698487281799316, 4348944, 5013060, -13.247716903686523, N'-', CAST(N'2024-11-18T16:30:34.057' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'0f55939b-8198-4949-8656-e812e4a9200b', N'1131117', N'11310', N'6209  ', 207030, 182628, 206625, 13.361587524414063, 0.19600726664066315, 1953306, 2313415, -15.566122055053711, N'-', CAST(N'2024-11-18T16:30:33.683' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'fc6157e5-047f-4344-8d63-e843803cfa6d', N'1131117', N'11310', N'6213  ', 2527870, 2749315, 2332841, -8.05455207824707, 8.3601493835449219, 24241336, 20675758, 17.245210647583008, N'-', CAST(N'2024-11-18T16:30:33.690' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'91154246-6fa4-41f8-9f98-e85a99f0e8ad', N'1131117', N'11310', N'2904  ', 41865, 43468, 35471, -3.6877703666687012, 18.025993347167969, 408597, 373259, 9.46742057800293, N'-', CAST(N'2024-11-18T16:30:33.150' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'0bb4be1d-81c2-4c26-996d-e875ff05da3e', N'1131117', N'11310', N'2439  ', 4116233, 4548840, 4540138, -9.5102710723876953, -9.3368310928344727, 35619335, 29514645, 20.683595657348633, N'-', CAST(N'2024-11-18T16:30:32.830' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'629267b5-ff2f-4e03-b62c-e8a91c5e67e8', N'1131117', N'11310', N'4414  ', 1109438, 1271156, 1027454, -12.72212028503418, 7.9793353080749512, 11930898, 11737924, 1.6440215110778809, N'-', CAST(N'2024-11-18T16:30:33.313' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'55a3929e-7b1e-464b-85c4-e91bb92e1ee5', N'1131117', N'11310', N'8462  ', 447631, 445693, 380054, 0.43482846021652222, 17.780895233154297, 4211888, 3530793, 19.290142059326172, N'-', CAST(N'2024-11-18T16:30:34.147' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c154427f-7f8e-41bc-b7a9-e9ba09462db8', N'1131117', N'11310', N'2059  ', 962289, 821999, 615320, 17.066930770874023, 56.388381958007812, 7993444, 4513500, 77.100784301757812, N'去年適逢客戶開始庫存調整，經過去化庫存及導入新品後導致年對年增幅度較大。', CAST(N'2024-11-18T16:30:32.410' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'60038272-7595-4cf5-a6ff-e9c67a05e1ab', N'1131117', N'11310', N'1730  ', 229555, 207137, 237155, 10.822789192199707, -3.2046551704406738, 2125635, 2195182, -3.1681654453277588, N'-', CAST(N'2024-11-18T16:30:32.277' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'afa11ac9-0d39-4aaf-ad54-e9c9eeed8945', N'1131117', N'11310', N'4807  ', 230416, 201814, 141972, 14.172455787658691, 62.296791076660156, 1445892, 950762, 52.077175140380859, N'由於產業旺季訂單量持續增長，本月合併收入較去年同期成長62.3%。', CAST(N'2024-11-18T16:30:33.347' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c4b3d97e-b037-482b-9135-e9cf42233c02', N'1131117', N'11310', N'2390  ', 69048, 57272, 49157, 20.561531066894531, 40.464225769042969, 567610, 523814, 8.3609828948974609, N'-', CAST(N'2024-11-18T16:30:32.757' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'5135cff4-aced-442f-9040-ea453ba5c61f', N'1131117', N'11310', N'1443  ', 87217, 84757, 67996, 2.9024150371551514, 28.267839431762695, 758210, 638370, 18.772811889648438, N'-', CAST(N'2024-11-18T16:30:31.923' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'4d58c084-3056-46aa-84da-eb36bb471fe3', N'1131117', N'11310', N'2889  ', 613301, 566190, 390164, 8.32070541381836, 57.190567016601562, 6833565, 5808404, 17.649616241455078, N'本月利息淨收益、手續費及佣金淨收益、透過損益按公允價值衡量之金融資產淨損益合計較去年同期增加約2.26億元。', CAST(N'2024-11-18T16:30:33.140' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'6f8ad8fd-4129-4e3e-aaa3-ec36344cd235', N'1131117', N'11310', N'2399  ', 123494, 180024, 235141, -31.401369094848633, -47.480873107910156, 1770449, 2015963, -12.178497314453125, N'-', CAST(N'2024-11-18T16:30:32.770' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'e85073ae-e38f-4e36-a490-ec5df9211844', N'1131117', N'11310', N'2028  ', 840223, 828960, 850499, 1.3586903810501099, -1.2082319259643555, 8676978, 8593224, 0.97465163469314575, N'-', CAST(N'2024-11-18T16:30:32.393' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'cd2bce5e-bd4b-4153-8fe7-ec6a6b56cac9', N'1131117', N'11310', N'6869  ', 407635, 222775, 393064, 82.980583190917969, 3.7070298194885254, 3041488, 5949333, -48.876823425292969, N'-', CAST(N'2024-11-18T16:30:34.030' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'156d122b-eab1-4ff7-94c5-ed3d34ebd984', N'1131117', N'11310', N'2509  ', 21764, 66352, 19823, -67.199180603027344, 9.791656494140625, 1376978, 185727, 641.39892578125, N'本月營收及累計營收較去年同期增加,主要係完工認列全坤家宜案售屋收入所致.', CAST(N'2024-11-18T16:30:32.943' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f642184a-beef-470b-bf01-ed663bf12e04', N'1131117', N'11310', N'1529  ', 87700, 77066, 76617, 13.798562049865723, 14.465457916259766, 593420, 608079, -2.4107065200805664, N'-', CAST(N'2024-11-18T16:30:32.103' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b8438ed0-1584-4e51-9420-edfe570e3851', N'1131117', N'11310', N'9904  ', 23938870, 21335005, 20685233, 12.204660415649414, 15.729273796081543, 219360249, 206441216, 6.25797176361084, N'-', CAST(N'2024-11-18T16:30:34.170' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'8a4190b9-6e51-46ae-84d3-ee5d9add3cf8', N'1131117', N'11310', N'1524  ', 267140, 254120, 230564, 5.1235637664794922, 15.86370849609375, 2363517, 2168734, 8.981414794921875, N'-', CAST(N'2024-11-18T16:30:32.093' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'90abf742-f2fc-4f79-bd0d-eeb98df47194', N'1131117', N'11310', N'3049  ', 147323, 146176, 52224, 0.78467053174972534, 182.0982666015625, 1182467, 1204119, -1.7981611490249634, N'本期營收較去年同期增加182.10，係客戶需求增加所致。', CAST(N'2024-11-18T16:30:33.210' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9ef9ed48-3373-462a-9981-eec9a3093569', N'1131117', N'11310', N'5288  ', 523526, 430057, 544560, 21.734096527099609, -3.8625679016113281, 5934151, 6022270, -1.4632190465927124, N'-', CAST(N'2024-11-18T16:30:33.380' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd4b77081-2d9c-438e-930e-eeec688c4729', N'1131117', N'11310', N'8467  ', 179078, 202614, 147396, -11.616176605224609, 21.494478225708008, 1992423, 1640478, 21.453807830810547, N'-', CAST(N'2024-11-18T16:30:34.153' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'e224e56c-4bd3-4f03-b8db-ef2e342b948d', N'1131117', N'11310', N'1737  ', 266245, 284881, 264995, -6.5416789054870605, 0.47170701622962952, 2722197, 2910245, -6.4615864753723145, N'-', CAST(N'2024-11-18T16:30:32.290' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b7711efb-ca54-4951-bebe-ef953f540170', N'1131117', N'11310', N'2374  ', 538836, 574774, 460805, -6.2525444030761719, 16.933626174926758, 5045087, 4069536, 23.9720458984375, N'-', CAST(N'2024-11-18T16:30:32.737' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd01a30a6-e112-4233-9f5d-f0356f0479bf', N'1131117', N'11310', N'2504  ', 1789462, 1755131, 1846124, 1.9560363292694092, -3.0692412853240967, 17810315, 17198862, 3.555194616317749, N'-', CAST(N'2024-11-18T16:30:32.937' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'1525741f-f931-465f-8536-f0a92450f786', N'1131117', N'11310', N'6799  ', 78364, 73307, 92895, 6.8983860015869141, -15.6423921585083, 764118, 851260, -10.236824989318848, N'-', CAST(N'2024-11-18T16:30:34.007' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'5eef5e2e-3115-4dbc-8b58-f137dcc6c2d6', N'1131117', N'11310', N'1321  ', 430677, 344278, 321339, 25.095706939697266, 34.025749206542969, 3898637, 3929634, -0.78880119323730469, N'-', CAST(N'2024-11-18T16:30:31.703' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'85c1a789-867f-4ed9-ab84-f16894ca55df', N'1131117', N'11310', N'6183  ', 197011, 254342, 192635, -22.540908813476562, 2.2716536521911621, 1981117, 1788366, 10.778051376342773, N'-', CAST(N'2024-11-18T16:30:33.633' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7a466e9b-f27b-4105-8bdb-f1ab033220ff', N'1131117', N'11310', N'6768  ', 2094031, 1299184, 1296096, 61.18048095703125, 61.564498901367188, 15333194, 11476532, 33.604766845703125, N'品牌銷售增加，訂單增加，營收增加', CAST(N'2024-11-18T16:30:33.980' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'076f358e-f92e-44fc-b12d-f1c1dc0e7650', N'1131117', N'11310', N'2250  ', 338149, 314096, 336622, 7.6578497886657715, 0.45362454652786255, 3032034, 2932279, 3.4019613265991211, N'-', CAST(N'2024-11-18T16:30:32.497' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9b24569e-6971-422a-90dc-f21c0d7f1ab3', N'1131117', N'11310', N'1503  ', 2587618, 2922673, 2343233, -11.463992118835449, 10.429393768310547, 28739334, 26694448, 7.660341739654541, N'-', CAST(N'2024-11-18T16:30:32.040' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7ae0557d-5692-40b4-a133-f224970d707d', N'1131117', N'11310', N'3308  ', 549, 528, 4234, 3.9772727489471436, -87.033538818359375, 66735, 488444, -86.337226867675781, N'客戶暫停拉貨', CAST(N'2024-11-18T16:30:33.230' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'4b25e70a-d51a-4bd4-bae9-f29a4540cc10', N'1131117', N'11310', N'6464  ', 373366, 365552, 344648, 2.1375892162323, 8.3325595855712891, 3578974, 3450934, 3.7102999687194824, N'-', CAST(N'2024-11-18T16:30:33.870' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'60ab09f6-5e90-47c7-be4c-f377721b1bf0', N'1131117', N'11310', N'3056  ', 4447052, 46091, 9716, 9548.4169921875, 45670.3984375, 4683845, 1502304, 211.77745056152344, N'營收增加係因個案心之所向完工交屋。', CAST(N'2024-11-18T16:30:33.217' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b66a77e4-a5b6-4035-8398-f3f41b36607e', N'1131117', N'11310', N'2454  ', 51117348, 44675936, 42810847, 14.418079376220703, 19.402795791625977, 443660110, 346695172, 27.968355178833008, N'海外子公司之營收係以當月平均匯率換算之', CAST(N'2024-11-18T16:30:32.850' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9cdc2011-3bed-4e5b-9214-f4044c96402e', N'1131117', N'11310', N'6743  ', 606263, 654830, 280184, -7.4167342185974121, 116.38031005859375, 6011774, 3213313, 87.089584350585938, N'本期營收較高，主係耳機市場回溫，訂單需求增加所致。', CAST(N'2024-11-18T16:30:33.970' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b0f4599f-279c-4614-a615-f41340fbbcee', N'1131117', N'11310', N'2887  ', 6575122, 7110453, 5254459, -7.5287890434265137, 25.134138107299805, 72865178, 58547046, 24.455772399902344, N'-', CAST(N'2024-11-18T16:30:33.133' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3390a312-3853-466e-82c2-f4a47c89b5b2', N'1131117', N'11310', N'1727  ', 203926, 202054, 133839, 0.926485002040863, 52.366649627685547, 1786490, 1432908, 24.675834655761719, N'今年10月月營收較去年同期增加達50%以上，主係本公司特用化學品及電子化學品銷量皆較去年同期增加', CAST(N'2024-11-18T16:30:32.273' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b2aa930c-18de-47a3-a892-f4b371e641ed', N'1131117', N'11310', N'3150  ', 20982, 29916, 15885, -29.863618850708008, 32.086875915527344, 304486, 192871, 57.870285034179688, N'累計營收較去年同期增加，係因市場需求增加所致。', CAST(N'2024-11-18T16:30:33.223' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'4125370a-0340-41ac-8c8d-f564b13c6d8c', N'1131117', N'11310', N'6657  ', 882, 455, 615, 93.846153259277344, 43.414634704589844, 6035, 5538, 8.9743585586547852, N'-', CAST(N'2024-11-18T16:30:33.937' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3995f443-205d-49ee-abb1-f5c25b732e04', N'1131117', N'11310', N'4536  ', 895765, 871566, 616617, 2.7764966487884521, 45.270889282226562, 7717266, 7863809, -1.8635116815567017, N'-', CAST(N'2024-11-18T16:30:33.317' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'413e3530-8f0f-43f1-b0c2-f639ba9173f6', N'1131117', N'11310', N'5531  ', 101615, 917553, 234425, -88.9254379272461, -56.653514862060547, 1530507, 3588136, -57.345344543457031, N'建設業之銷售進度及狀況深受景氣榮枯及市場現狀影響，且建築個案之完工時間並非固定時點，故月營收的表現上會有較大之波動。', CAST(N'2024-11-18T16:30:33.393' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'91d712a0-02c9-4ed8-aa84-f6693e0b07a7', N'1131117', N'11310', N'2342  ', 179872, 175364, 117061, 2.570652961730957, 53.656639099121094, 1532449, 1287541, 19.02137565612793, N'主要係晶圓市場需求較去年同期增加所致。', CAST(N'2024-11-18T16:30:32.663' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'6ce56642-ac98-45f6-b437-f6d600de77e3', N'1131117', N'11310', N'2013  ', 1712631, 1602897, 1380166, 6.8459796905517578, 24.088769912719727, 15970236, 15619306, 2.2467708587646484, N'-', CAST(N'2024-11-18T16:30:32.367' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'68e85c5c-3645-411f-8480-f6dac8acf4dc', N'1131117', N'11310', N'2024  ', 89631, 77005, 80982, 16.396337509155273, 10.680150985717773, 892773, 745252, 19.794780731201172, N'-', CAST(N'2024-11-18T16:30:32.387' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'28512e4c-ed77-4775-b9ee-f749b79e4b90', N'1131117', N'11310', N'1459  ', 102616, 102407, 148718, 0.20408761501312256, -30.999610900878906, 1068341, 914254, 16.853849411010742, N'-', CAST(N'2024-11-18T16:30:31.977' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'f0495702-7a0a-4c98-988e-f882cbce9afc', N'1131117', N'11310', N'1475  ', 163143, 172791, 107714, -5.5836243629455566, 51.459419250488281, 1630547, 1052060, 54.986122131347656, N'本月營收較去年同期增加，主要係因客戶需求較去年同期增加。', CAST(N'2024-11-18T16:30:32.023' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'2052dc67-7339-4373-9692-f9149a444b24', N'1131117', N'11310', N'2101  ', 765113, 7027665, 706518, -89.112838745117188, 8.2934904098510742, 13912026, 6589730, 111.11678314208984, N'本公告係屬自結數，如與公告財報有所差異，請以財報為準，另113.9月新增子公司-南榮營建收入62億元。', CAST(N'2024-11-18T16:30:32.420' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'fe1a949a-51b2-4d35-865d-f91f5da9d478', N'1131117', N'11310', N'4722  ', 295922, 318145, 278809, -6.9851799011230469, 6.1378936767578125, 3370485, 2780133, 21.23466682434082, N'-', CAST(N'2024-11-18T16:30:33.337' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'36f4ab52-4f77-42e5-85a0-f943d009bbaa', N'1131117', N'11310', N'2027  ', 8049301, 6922208, 8473628, 16.282276153564453, -5.0076189041137695, 77093232, 88152600, -12.545708656311035, N'-', CAST(N'2024-11-18T16:30:32.390' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'29867fa2-2539-45f8-8ab8-f9a2caaf2f93', N'1131117', N'11310', N'2613  ', 252570, 279070, 282620, -9.49582576751709, -10.632651329040527, 2704493, 2605431, 3.8021347522735596, N'-', CAST(N'2024-11-18T16:30:33.033' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c215d3a6-1505-4f47-a70e-f9aa29f51cc5', N'1131117', N'11310', N'3003  ', 404365, 380260, 332592, 6.3390836715698242, 21.579893112182617, 3760054, 3490406, 7.725405216217041, N'-', CAST(N'2024-11-18T16:30:33.167' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ae7d6cc6-b932-4dd4-a57d-f9bdf034e513', N'1131117', N'11310', N'3038  ', 284987, 274727, 311314, 3.73461651802063, -8.4567346572875977, 3044154, 3768239, -19.215475082397461, N'-', CAST(N'2024-11-18T16:30:33.197' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'7afe8259-c349-4b67-8567-fa27bf9cd2cc', N'1131117', N'11310', N'2367  ', 1455582, 1531025, 1238779, -4.9276137351989746, 17.501346588134766, 15507360, 12570145, 23.366596221923828, N'-', CAST(N'2024-11-18T16:30:32.720' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'a61b8d95-37f5-469f-b940-fa2ac62cd241', N'1131117', N'11310', N'2491  ', 17154, 18195, 18544, -5.7213521003723145, -7.4956860542297363, 167327, 156486, 6.9277763366699219, N'-', CAST(N'2024-11-18T16:30:32.920' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'6dd4cf40-a616-42bb-a405-fa360784dbb7', N'1131117', N'11310', N'1731  ', 120718, 116047, 104520, 4.0250930786132812, 15.497512817382813, 1230496, 1068443, 15.167210578918457, N'本月美髮及醫藥產品均出貨暢旺，當月及累計營收皆較去年同期成長逾15%。', CAST(N'2024-11-18T16:30:32.280' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'6ad63143-79c1-471d-8209-fb1121748bfe', N'1131117', N'11310', N'4943  ', 127667, 138737, 160214, -7.9791259765625, -20.314704895019531, 1247006, 1368145, -8.8542518615722656, N'-', CAST(N'2024-11-18T16:30:33.357' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'9827ebe4-be97-4230-af04-fb36e4c597df', N'1131117', N'11310', N'3617  ', 1217411, 931443, 1115862, 30.701610565185547, 9.10049819946289, 10489708, 10016075, 4.7287287712097168, N'-', CAST(N'2024-11-18T16:30:33.277' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b379616b-6f02-415a-92d7-fba350717d9d', N'1131117', N'11310', N'3532  ', 974107, 1021364, 1093137, -4.6268520355224609, -10.888845443725586, 10278649, 12123180, -15.214910507202148, N'-', CAST(N'2024-11-18T16:30:33.260' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c709b15f-2f3a-42f2-afbc-fbc511e725f9', N'1131117', N'11310', N'2890  ', 5112004, 5314128, 3734834, -3.8035213947296143, 36.873661041259766, 55158146, 44815848, 23.077323913574219, N'-', CAST(N'2024-11-18T16:30:33.140' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'd9b28bfb-4fdf-454f-83af-fca7c07d8857', N'1131117', N'11310', N'6166  ', 844822, 822542, 800360, 2.7086763381958008, 5.55525016784668, 7852908, 9291202, -15.480171203613281, N'-', CAST(N'2024-11-18T16:30:33.457' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'72771be7-9d73-480c-8aa7-fcbacaefb97b', N'1131117', N'11310', N'2753  ', 705435, 671862, 656274, 4.9970083236694336, 7.4909262657165527, 6597508, 6079459, 8.52130126953125, N'-', CAST(N'2024-11-18T16:30:33.087' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ef00cd4c-4a88-4ea9-a08e-fcbc36187bc1', N'1131117', N'11310', N'3661  ', 4192677, 5301492, 2837433, -20.915149688720703, 47.763031005859375, 43097502, 24071779, 79.037460327148438, N'本年營收較去年增加，係因量產產品增加所致。', CAST(N'2024-11-18T16:30:33.280' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'2bb68f81-144c-4b4c-b824-fcefd03db2e4', N'1131117', N'11310', N'6698  ', 60989, 64797, 84057, -5.8768153190612793, -27.443283081054688, 673613, 885860, -23.959428787231445, N'-', CAST(N'2024-11-18T16:30:33.957' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'b442ea04-dd49-4409-948b-fd15e82ea08d', N'1131117', N'11310', N'8454  ', 8156010, 8245284, 7943621, -1.0827280282974243, 2.6737051010131836, 87243762, 84350751, 3.4297394752502441, N'-', CAST(N'2024-11-18T16:30:34.147' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'c147e2a4-f493-4acb-ba75-fd2bcbfaaec9', N'1131117', N'11310', N'1438  ', 0, 1164987, 0, -100, NULL, 1166647, 299747, 289.2105712890625, N'113年銷售土地地上權，故營收變化大。', CAST(N'2024-11-18T16:30:31.827' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'07ccb2ae-a942-4a00-8fb6-fd2ef3662cf7', N'1131117', N'11310', N'2014  ', 2045819, 1956661, 2991697, 4.5566401481628418, -31.616771697998047, 26059543, 31650758, -17.665342330932617, N'-', CAST(N'2024-11-18T16:30:32.370' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'36699d12-4953-488c-8063-fd5c695ee52e', N'1131117', N'11310', N'3714  ', 1871093, 2038647, 2005740, -8.21888256072998, -6.7130832672119141, 20751729, 18737135, 10.75187873840332, N'-', CAST(N'2024-11-18T16:30:33.297' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'6d879637-8fd1-4ae0-841a-fdca70aba5c3', N'1131117', N'11310', N'1315  ', 174748, 175583, 136905, -0.4755585789680481, 27.641796112060547, 1699753, 1829938, -7.1141753196716309, N'-', CAST(N'2024-11-18T16:30:31.687' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'eaa43a43-2537-4e77-9e48-fe2b3931223b', N'1131117', N'11310', N'2421  ', 1175506, 1273787, 1079950, -7.7156543731689453, 8.8481874465942383, 11943033, 10728701, 11.318536758422852, N'-', CAST(N'2024-11-18T16:30:32.800' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'5d93cf46-68d4-48e0-b73c-fe3617a6629c', N'1131117', N'11310', N'3167  ', 321772, 276382, 158231, 16.422922134399414, 103.35585021972656, 1932080, 978832, 97.386276245117188, N'主係因客戶需求量增加所致', CAST(N'2024-11-18T16:30:33.227' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'eff17506-0b28-488e-9435-fe57c40e994a', N'1131117', N'11310', N'3014  ', 592935, 638504, 493295, -7.136838436126709, 20.19886589050293, 5585534, 5319782, 4.9955430030822754, N'-', CAST(N'2024-11-18T16:30:33.173' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'aeeff20f-b11c-47df-bcfd-fe81501cf9a8', N'1131117', N'11310', N'8429  ', 14495, 11977, 29403, 21.023628234863281, -50.702308654785156, 101776, 156027, -34.770263671875, N'主係轉型過渡時期，外貿代工訂單比去年同期累計減少所致。', CAST(N'2024-11-18T16:30:34.143' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'4e37caf5-47d8-440a-9d92-fe909b89d0f9', N'1131117', N'11310', N'2331  ', 1234601, 1459533, 1263903, -15.41123104095459, -2.3183741569519043, 14421796, 16677131, -13.523519515991211, N'-', CAST(N'2024-11-18T16:30:32.637' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'93ed0acc-118d-43f8-880e-feec71f2f790', N'1131117', N'11310', N'3701  ', 1162500, 1079979, 1271617, 7.6409816741943359, -8.5809640884399414, 11298184, 11302233, -0.03582477942109108, N'-', CAST(N'2024-11-18T16:30:33.287' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'fb211409-5165-45d4-bbc3-ff39d3e3af14', N'1131117', N'11310', N'2007  ', 625216, 629225, 431789, -0.637133002281189, 44.796649932861328, 5868247, 4227838, 38.800186157226562, N'-', CAST(N'2024-11-18T16:30:32.360' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'ec7cab65-30e9-44f3-86fb-ff978995e891', N'1131117', N'11310', N'6206  ', 350683, 353472, 350443, -0.78902995586395264, 0.068484745919704437, 3667320, 2843900, 28.953901290893555, N'-', CAST(N'2024-11-18T16:30:33.673' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'43e6e937-b356-4beb-965c-ff9cf77047f1', N'1131117', N'11310', N'6770  ', 3913891, 3900201, 3846930, 0.35100755095481873, 1.7406347990036011, 37507934, 36708016, 2.1791372299194336, N'-', CAST(N'2024-11-18T16:30:33.980' AS DateTime), NULL)
GO
INSERT [dbo].[Revenue] ([Id], [PublishDate], [Year_Date], [CompanyCode], [Revenue_CurrentMonth], [Revenue_PreviousMonth], [Revenue_SameMonthLastYear], [Revenue_MonthOverMonthGrowthPct], [Revenue_YearOverYearGrowthPct], [CumulativeRevenue_CurrentMonth], [CumulativeRevenue_LastYear], [CumulativeRevenue_PeriodOverPeriodGrowthPct], [Memo], [CreateTime], [ModifyTime]) VALUES (N'3c426085-a82a-4a99-8e61-ffabb58428a9', N'1131117', N'11310', N'1219  ', 1233040, 1171870, 1280865, 5.2198624610900879, -3.7338049411773682, 11806192, 13680823, -13.702618598937988, N'-', CAST(N'2024-11-18T16:30:31.300' AS DateTime), NULL)
GO
ALTER TABLE [dbo].[Company] ADD  CONSTRAINT [DF_Company_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[Industry] ADD  CONSTRAINT [DF_Industry_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Industry] ADD  CONSTRAINT [DF_Industry_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[Revenue] ADD  CONSTRAINT [DF_Revenue_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Revenue] ADD  CONSTRAINT [DF_Revenue_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_Company_Industry] FOREIGN KEY([IndustryId])
REFERENCES [dbo].[Industry] ([Id])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_Company_Industry]
GO
ALTER TABLE [dbo].[Revenue]  WITH CHECK ADD  CONSTRAINT [FK_Revenue_Company] FOREIGN KEY([CompanyCode])
REFERENCES [dbo].[Company] ([CompanyCode])
GO
ALTER TABLE [dbo].[Revenue] CHECK CONSTRAINT [FK_Revenue_Company]
GO
/****** Object:  StoredProcedure [dbo].[spGetData]    Script Date: 2024/11/22 下午 05:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetData] 
(
    @page INT = 1, -- 頁碼，預設為1
    @pageSize INT = 10 -- 每頁筆數，預設為10
)
AS
BEGIN
    -- 計算總筆數和總頁數
    DECLARE @total INT;

    -- 查詢總筆數
    SELECT 
        @total = COUNT(*)
    FROM Revenue r
    JOIN Company c ON r.CompanyCode = c.CompanyCode
    JOIN Industry i ON c.IndustryId = i.Id;

    -- 查詢結果並返回
    SELECT 
        PublishDate, -- 出表日期
        Year_Date, -- 資料年月
        r.CompanyCode, -- 公司代號
        c.CompanyName, -- 公司名稱
        i.IndustryName, -- 產業別
        Revenue_CurrentMonth, -- [營業收入-當月營收]
        Revenue_PreviousMonth, -- [營業收入-上月營收]
        Revenue_SameMonthLastYear, -- [營業收入-去年當月營收]
        Revenue_MonthOverMonthGrowthPct, -- [營業收入-上月比較增減(%) ]
        Revenue_YearOverYearGrowthPct, -- [營業收入-去年同月增減(%) ]
        CumulativeRevenue_CurrentMonth, -- [累計營業收入-當月累計營收]
        CumulativeRevenue_LastYear, -- [累計營業收入-去年累計營收]
        CumulativeRevenue_PeriodOverPeriodGrowthPct, -- [累計營業收入-前期比較增減(%) ]
        Memo,
        @total AS Total -- 總筆數
    FROM Revenue r
    JOIN Company c ON r.CompanyCode = c.CompanyCode
    JOIN Industry i ON c.IndustryId = i.Id
    ORDER BY PublishDate, Year_Date, CompanyCode
    OFFSET @pageSize * (@page - 1) ROWS
    FETCH NEXT @pageSize ROWS ONLY;
END;
GO
/****** Object:  StoredProcedure [dbo].[spInsertData]    Script Date: 2024/11/22 下午 05:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertData]
(
	@CompanyCode char(6)
	, @CompanyName nvarchar(50)
	, @IndustryName nvarchar(50)
	, @PublishDate varchar(7)
	, @Year_Date char(5)
	, @Revenue_CurrentMonth bigint
	, @Revenue_PreviousMonth bigint
	, @Revenue_SameMonthLastYear bigint
	, @Revenue_MonthOverMonthGrowthPct float
	, @Revenue_YearOverYearGrowthPct float
	, @CumulativeRevenue_CurrentMonth bigint
	, @CumulativeRevenue_LastYear bigint
	, @CumulativeRevenue_PeriodOverPeriodGrowthPct float
	, @Memo nvarchar(MAX)
)
AS
BEGIN
	DECLARE @IndustryId uniqueidentifier;
	SET @IndustryId = (SELECT id FROM Industry WHERE [IndustryName] = @IndustryName);
	IF (@IndustryId IS NULL)
		BEGIN
			-- 若不存在則新增
			SET @IndustryId = NEWID();
			-- 新增產業別
			INSERT INTO Industry ([Id],[IndustryName]) VALUES (@IndustryId, @IndustryName)
		END;

	IF (NOT EXISTS ( SELECT * FROM Company WHERE CompanyCode = @CompanyCode))
		BEGIN
			-- 新增公司
			INSERT INTO Company ([CompanyCode], [CompanyName], [IndustryId]) VALUES (@CompanyCode, @CompanyName, @IndustryId)
		END;

		IF (NOT EXISTS ( SELECT * FROM Revenue WHERE PublishDate = @PublishDate AND Year_Date = @Year_Date AND CompanyCode = @CompanyCode))
			BEGIN
				-- 新增收入
				INSERT INTO Revenue
				([PublishDate], [Year_Date], [CompanyCode] , [Revenue_CurrentMonth] , [Revenue_PreviousMonth] , [Revenue_SameMonthLastYear] , [Revenue_MonthOverMonthGrowthPct] , [Revenue_YearOverYearGrowthPct] , [CumulativeRevenue_CurrentMonth] , [CumulativeRevenue_LastYear] , [CumulativeRevenue_PeriodOverPeriodGrowthPct] , [Memo])
				VALUES
				(@PublishDate, @Year_Date, @CompanyCode , @Revenue_CurrentMonth , @Revenue_PreviousMonth , @Revenue_SameMonthLastYear , @Revenue_MonthOverMonthGrowthPct , @Revenue_YearOverYearGrowthPct , @CumulativeRevenue_CurrentMonth , @CumulativeRevenue_LastYear , @CumulativeRevenue_PeriodOverPeriodGrowthPct , @Memo)
			END;
		ELSE
		BEGIN
			-- 編輯收入
			UPDATE Revenue
			SET [Revenue_CurrentMonth] = @Revenue_CurrentMonth
			, [Revenue_PreviousMonth] = @Revenue_PreviousMonth
			, [Revenue_SameMonthLastYear] = @Revenue_SameMonthLastYear
			, [Revenue_MonthOverMonthGrowthPct] = @Revenue_MonthOverMonthGrowthPct
			, [Revenue_YearOverYearGrowthPct] = @Revenue_YearOverYearGrowthPct
			, [CumulativeRevenue_CurrentMonth] = @CumulativeRevenue_CurrentMonth
			, [CumulativeRevenue_LastYear] = @CumulativeRevenue_LastYear
			, [CumulativeRevenue_PeriodOverPeriodGrowthPct] = @CumulativeRevenue_PeriodOverPeriodGrowthPct
			, [Memo] = @Memo
			WHERE PublishDate = @PublishDate AND Year_Date = @Year_Date AND CompanyCode = @CompanyCode
		END;
END;
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司代號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'CompanyCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司名稱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'產業別' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'IndustryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'ModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Industry', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'產業名稱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Industry', @level2type=N'COLUMN',@level2name=N'IndustryName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Industry', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Industry', @level2type=N'COLUMN',@level2name=N'ModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Revenue', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出表日期(民國_月_日)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Revenue', @level2type=N'COLUMN',@level2name=N'PublishDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'資料年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Revenue', @level2type=N'COLUMN',@level2name=N'Year_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司代號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Revenue', @level2type=N'COLUMN',@level2name=N'CompanyCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'營業收入-當月營收' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Revenue', @level2type=N'COLUMN',@level2name=N'Revenue_CurrentMonth'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'營業收入-上月營收' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Revenue', @level2type=N'COLUMN',@level2name=N'Revenue_PreviousMonth'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'營業收入-去年當月營收' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Revenue', @level2type=N'COLUMN',@level2name=N'Revenue_SameMonthLastYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'營業收入-上月比較增減(%)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Revenue', @level2type=N'COLUMN',@level2name=N'Revenue_MonthOverMonthGrowthPct'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'營業收入-去年同月增減(%)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Revenue', @level2type=N'COLUMN',@level2name=N'Revenue_YearOverYearGrowthPct'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'累計營業收入-當月累計營收' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Revenue', @level2type=N'COLUMN',@level2name=N'CumulativeRevenue_CurrentMonth'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'累計營業收入-去年累計營收' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Revenue', @level2type=N'COLUMN',@level2name=N'CumulativeRevenue_LastYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'累計營業收入-前期比較增減(%)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Revenue', @level2type=N'COLUMN',@level2name=N'CumulativeRevenue_PeriodOverPeriodGrowthPct'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'備註' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Revenue', @level2type=N'COLUMN',@level2name=N'Memo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Revenue', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Revenue', @level2type=N'COLUMN',@level2name=N'ModifyTime'
GO
