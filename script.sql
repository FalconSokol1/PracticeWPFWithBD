USE [aero]
GO
/****** Object:  Table [dbo].[AdminAir]    Script Date: 22.03.2023 11:41:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminAir](
	[ID_admin] [int] NOT NULL,
	[name] [char](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 22.03.2023 11:41:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[ID_comp] [int] NOT NULL,
	[name] [char](10) NOT NULL,
 CONSTRAINT [PK2] PRIMARY KEY CLUSTERED 
(
	[ID_comp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pass_in_trip]    Script Date: 22.03.2023 11:41:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pass_in_trip](
	[trip_no] [int] NOT NULL,
	[date] [datetime] NOT NULL,
	[ID_psg] [int] NOT NULL,
	[place] [char](10) NOT NULL,
 CONSTRAINT [PK_pt] PRIMARY KEY CLUSTERED 
(
	[trip_no] ASC,
	[date] ASC,
	[ID_psg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Passenger]    Script Date: 22.03.2023 11:41:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Passenger](
	[ID_psg] [int] NOT NULL,
	[name] [char](20) NOT NULL,
	[Password] [nvarchar](16) NOT NULL,
 CONSTRAINT [PK_psg] PRIMARY KEY CLUSTERED 
(
	[ID_psg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trip]    Script Date: 22.03.2023 11:41:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trip](
	[trip_no] [int] NOT NULL,
	[ID_comp] [int] NOT NULL,
	[plane] [char](10) NOT NULL,
	[town_from] [char](25) NOT NULL,
	[town_to] [char](25) NOT NULL,
	[time_out] [datetime] NOT NULL,
	[time_in] [datetime] NOT NULL,
 CONSTRAINT [PK_t] PRIMARY KEY CLUSTERED 
(
	[trip_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Company] ([ID_comp], [name]) VALUES (1, N'Don_avia  ')
INSERT [dbo].[Company] ([ID_comp], [name]) VALUES (2, N'Aeroflot  ')
INSERT [dbo].[Company] ([ID_comp], [name]) VALUES (3, N'Dale_avia ')
INSERT [dbo].[Company] ([ID_comp], [name]) VALUES (4, N'air_France')
INSERT [dbo].[Company] ([ID_comp], [name]) VALUES (5, N'British_AW')
GO
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (1100, CAST(N'2003-04-29T00:00:00.000' AS DateTime), 1, N'1a        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (1123, CAST(N'2003-04-05T00:00:00.000' AS DateTime), 3, N'2a        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (1123, CAST(N'2003-04-08T00:00:00.000' AS DateTime), 1, N'4c        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (1123, CAST(N'2003-04-08T00:00:00.000' AS DateTime), 6, N'4b        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (1124, CAST(N'2003-04-02T00:00:00.000' AS DateTime), 2, N'2d        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (1145, CAST(N'2003-04-05T00:00:00.000' AS DateTime), 3, N'2c        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (1145, CAST(N'2003-04-25T00:00:00.000' AS DateTime), 5, N'1d        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (1181, CAST(N'2003-04-01T00:00:00.000' AS DateTime), 1, N'1a        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (1181, CAST(N'2003-04-01T00:00:00.000' AS DateTime), 6, N'1b        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (1181, CAST(N'2003-04-01T00:00:00.000' AS DateTime), 8, N'3c        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (1181, CAST(N'2003-04-13T00:00:00.000' AS DateTime), 5, N'1b        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (1182, CAST(N'2003-04-13T00:00:00.000' AS DateTime), 5, N'4b        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (1182, CAST(N'2003-04-13T00:00:00.000' AS DateTime), 9, N'6d        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (1187, CAST(N'2003-04-14T00:00:00.000' AS DateTime), 8, N'3a        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (1187, CAST(N'2003-04-14T00:00:00.000' AS DateTime), 10, N'3d        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (1188, CAST(N'2003-04-01T00:00:00.000' AS DateTime), 8, N'3a        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (7771, CAST(N'2005-11-04T00:00:00.000' AS DateTime), 11, N'4a        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (7771, CAST(N'2005-11-07T00:00:00.000' AS DateTime), 11, N'1b        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (7771, CAST(N'2005-11-07T00:00:00.000' AS DateTime), 37, N'1c        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (7771, CAST(N'2005-11-09T00:00:00.000' AS DateTime), 11, N'5a        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (7771, CAST(N'2005-11-14T00:00:00.000' AS DateTime), 14, N'4d        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (7771, CAST(N'2005-11-16T00:00:00.000' AS DateTime), 14, N'5d        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (7772, CAST(N'2005-11-07T00:00:00.000' AS DateTime), 12, N'1d        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (7772, CAST(N'2005-11-07T00:00:00.000' AS DateTime), 37, N'1a        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (7772, CAST(N'2005-11-29T00:00:00.000' AS DateTime), 10, N'3a        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (7772, CAST(N'2005-11-29T00:00:00.000' AS DateTime), 13, N'1b        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (7772, CAST(N'2005-11-29T00:00:00.000' AS DateTime), 14, N'1c        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (7773, CAST(N'2005-11-07T00:00:00.000' AS DateTime), 13, N'2d        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (7778, CAST(N'2005-11-05T00:00:00.000' AS DateTime), 10, N'2a        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (8881, CAST(N'2005-11-08T00:00:00.000' AS DateTime), 37, N'1d        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (8882, CAST(N'2005-11-06T00:00:00.000' AS DateTime), 37, N'1a        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (8882, CAST(N'2005-11-13T00:00:00.000' AS DateTime), 14, N'3d        ')
GO
INSERT [dbo].[Passenger] ([ID_psg], [name], [Password]) VALUES (1, N'Bruce Willis        ', N'Неизвестно')
INSERT [dbo].[Passenger] ([ID_psg], [name], [Password]) VALUES (2, N'George Clooney      ', N'Неизвестно')
INSERT [dbo].[Passenger] ([ID_psg], [name], [Password]) VALUES (3, N'Kevin Costner       ', N'Неизвестно')
INSERT [dbo].[Passenger] ([ID_psg], [name], [Password]) VALUES (4, N'Donald Sutherland   ', N'Неизвестно')
INSERT [dbo].[Passenger] ([ID_psg], [name], [Password]) VALUES (5, N'Jennifer Lopez      ', N'Неизвестно')
INSERT [dbo].[Passenger] ([ID_psg], [name], [Password]) VALUES (6, N'Ray Liotta          ', N'Неизвестно')
INSERT [dbo].[Passenger] ([ID_psg], [name], [Password]) VALUES (7, N'Samuel L. Jackson   ', N'Неизвестно')
INSERT [dbo].[Passenger] ([ID_psg], [name], [Password]) VALUES (8, N'Nikole Kidman       ', N'Неизвестно')
INSERT [dbo].[Passenger] ([ID_psg], [name], [Password]) VALUES (9, N'Alan Rickman        ', N'Неизвестно')
INSERT [dbo].[Passenger] ([ID_psg], [name], [Password]) VALUES (10, N'Kurt Russell        ', N'Неизвестно')
INSERT [dbo].[Passenger] ([ID_psg], [name], [Password]) VALUES (11, N'Harrison Ford       ', N'Неизвестно')
INSERT [dbo].[Passenger] ([ID_psg], [name], [Password]) VALUES (12, N'Russell Crowe       ', N'Неизвестно')
INSERT [dbo].[Passenger] ([ID_psg], [name], [Password]) VALUES (13, N'Steve Martin        ', N'Неизвестно')
INSERT [dbo].[Passenger] ([ID_psg], [name], [Password]) VALUES (14, N'Michael Caine       ', N'Неизвестно')
INSERT [dbo].[Passenger] ([ID_psg], [name], [Password]) VALUES (15, N'Angelina Jolie      ', N'Неизвестно')
INSERT [dbo].[Passenger] ([ID_psg], [name], [Password]) VALUES (16, N'Mel Gibson          ', N'Неизвестно')
INSERT [dbo].[Passenger] ([ID_psg], [name], [Password]) VALUES (17, N'Michael Douglas     ', N'Неизвестно')
INSERT [dbo].[Passenger] ([ID_psg], [name], [Password]) VALUES (18, N'John Travolta       ', N'Неизвестно')
INSERT [dbo].[Passenger] ([ID_psg], [name], [Password]) VALUES (19, N'Sylvester Stallone  ', N'Неизвестно')
INSERT [dbo].[Passenger] ([ID_psg], [name], [Password]) VALUES (20, N'Tommy Lee Jones     ', N'Неизвестно')
INSERT [dbo].[Passenger] ([ID_psg], [name], [Password]) VALUES (21, N'Catherine Zeta-Jones', N'Неизвестно')
INSERT [dbo].[Passenger] ([ID_psg], [name], [Password]) VALUES (22, N'Antonio Banderas    ', N'Неизвестно')
INSERT [dbo].[Passenger] ([ID_psg], [name], [Password]) VALUES (23, N'Kim Basinger        ', N'Неизвестно')
INSERT [dbo].[Passenger] ([ID_psg], [name], [Password]) VALUES (24, N'Sam Neill           ', N'Неизвестно')
INSERT [dbo].[Passenger] ([ID_psg], [name], [Password]) VALUES (25, N'Gary Oldman         ', N'Неизвестно')
INSERT [dbo].[Passenger] ([ID_psg], [name], [Password]) VALUES (26, N'Clint Eastwood      ', N'Неизвестно')
INSERT [dbo].[Passenger] ([ID_psg], [name], [Password]) VALUES (27, N'Brad Pitt           ', N'Неизвестно')
INSERT [dbo].[Passenger] ([ID_psg], [name], [Password]) VALUES (28, N'Johnny Depp         ', N'Неизвестно')
INSERT [dbo].[Passenger] ([ID_psg], [name], [Password]) VALUES (29, N'Pierce Brosnan      ', N'Неизвестно')
INSERT [dbo].[Passenger] ([ID_psg], [name], [Password]) VALUES (30, N'Sean Connery        ', N'Неизвестно')
INSERT [dbo].[Passenger] ([ID_psg], [name], [Password]) VALUES (31, N'Bruce Willis        ', N'Неизвестно')
INSERT [dbo].[Passenger] ([ID_psg], [name], [Password]) VALUES (37, N'Mullah Omar         ', N'Неизвестно')
GO
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (1100, 4, N'Boeing    ', N'Rostov                   ', N'Paris                    ', CAST(N'1900-01-01T14:30:00.000' AS DateTime), CAST(N'1900-01-01T17:50:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (1101, 4, N'Boeing    ', N'Paris                    ', N'Rostov                   ', CAST(N'1900-01-01T08:12:00.000' AS DateTime), CAST(N'1900-01-01T11:45:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (1123, 3, N'TU-154    ', N'Rostov                   ', N'Vladivostok              ', CAST(N'1900-01-01T16:20:00.000' AS DateTime), CAST(N'1900-01-01T03:40:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (1124, 3, N'TU-154    ', N'Vladivostok              ', N'Rostov                   ', CAST(N'1900-01-01T09:00:00.000' AS DateTime), CAST(N'1900-01-01T19:50:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (1145, 2, N'IL-86     ', N'Moscow                   ', N'Rostov                   ', CAST(N'1900-01-01T09:35:00.000' AS DateTime), CAST(N'1900-01-01T11:23:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (1146, 2, N'IL-86     ', N'Rostov                   ', N'Moscow                   ', CAST(N'1900-01-01T17:55:00.000' AS DateTime), CAST(N'1900-01-01T20:01:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (1181, 1, N'TU-134    ', N'Rostov                   ', N'Moscow                   ', CAST(N'1900-01-01T06:12:00.000' AS DateTime), CAST(N'1900-01-01T08:01:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (1182, 1, N'TU-134    ', N'Moscow                   ', N'Rostov                   ', CAST(N'1900-01-01T12:35:00.000' AS DateTime), CAST(N'1900-01-01T14:30:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (1187, 1, N'TU-134    ', N'Rostov                   ', N'Moscow                   ', CAST(N'1900-01-01T15:42:00.000' AS DateTime), CAST(N'1900-01-01T17:39:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (1188, 1, N'TU-134    ', N'Moscow                   ', N'Rostov                   ', CAST(N'1900-01-01T22:50:00.000' AS DateTime), CAST(N'1900-01-01T00:48:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (1195, 1, N'TU-154    ', N'Rostov                   ', N'Moscow                   ', CAST(N'1900-01-01T23:30:00.000' AS DateTime), CAST(N'1900-01-01T01:11:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (1196, 1, N'TU-154    ', N'Moscow                   ', N'Rostov                   ', CAST(N'1900-01-01T04:00:00.000' AS DateTime), CAST(N'1900-01-01T05:45:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (7771, 5, N'Boeing    ', N'London                   ', N'Singapore                ', CAST(N'1900-01-01T01:00:00.000' AS DateTime), CAST(N'1900-01-01T11:00:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (7772, 5, N'Boeing    ', N'Singapore                ', N'London                   ', CAST(N'1900-01-01T12:00:00.000' AS DateTime), CAST(N'1900-01-01T02:00:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (7773, 5, N'Boeing    ', N'London                   ', N'Singapore                ', CAST(N'1900-01-01T03:00:00.000' AS DateTime), CAST(N'1900-01-01T13:00:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (7774, 5, N'Boeing    ', N'Singapore                ', N'London                   ', CAST(N'1900-01-01T14:00:00.000' AS DateTime), CAST(N'1900-01-01T06:00:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (7775, 5, N'Boeing    ', N'London                   ', N'Singapore                ', CAST(N'1900-01-01T09:00:00.000' AS DateTime), CAST(N'1900-01-01T20:00:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (7776, 5, N'Boeing    ', N'Singapore                ', N'London                   ', CAST(N'1900-01-01T18:00:00.000' AS DateTime), CAST(N'1900-01-01T08:00:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (7777, 5, N'Boeing    ', N'London                   ', N'Singapore                ', CAST(N'1900-01-01T18:00:00.000' AS DateTime), CAST(N'1900-01-01T06:00:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (7778, 5, N'Boeing    ', N'Singapore                ', N'London                   ', CAST(N'1900-01-01T22:00:00.000' AS DateTime), CAST(N'1900-01-01T12:00:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (8881, 5, N'Boeing    ', N'London                   ', N'Paris                    ', CAST(N'1900-01-01T03:00:00.000' AS DateTime), CAST(N'1900-01-01T04:00:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (8882, 5, N'Boeing    ', N'Paris                    ', N'London                   ', CAST(N'1900-01-01T22:00:00.000' AS DateTime), CAST(N'1900-01-01T23:00:00.000' AS DateTime))
GO
ALTER TABLE [dbo].[Passenger] ADD  CONSTRAINT [DF__Passenger__Passw__37A5467C]  DEFAULT ('Неизвестно') FOR [Password]
GO
ALTER TABLE [dbo].[Pass_in_trip]  WITH CHECK ADD  CONSTRAINT [FK_Pass_in_trip_Passenger] FOREIGN KEY([ID_psg])
REFERENCES [dbo].[Passenger] ([ID_psg])
GO
ALTER TABLE [dbo].[Pass_in_trip] CHECK CONSTRAINT [FK_Pass_in_trip_Passenger]
GO
ALTER TABLE [dbo].[Pass_in_trip]  WITH CHECK ADD  CONSTRAINT [FK_Pass_in_trip_Trip] FOREIGN KEY([trip_no])
REFERENCES [dbo].[Trip] ([trip_no])
GO
ALTER TABLE [dbo].[Pass_in_trip] CHECK CONSTRAINT [FK_Pass_in_trip_Trip]
GO
ALTER TABLE [dbo].[Passenger]  WITH CHECK ADD  CONSTRAINT [FK_Passenger_Passenger] FOREIGN KEY([ID_psg])
REFERENCES [dbo].[Passenger] ([ID_psg])
GO
ALTER TABLE [dbo].[Passenger] CHECK CONSTRAINT [FK_Passenger_Passenger]
GO
ALTER TABLE [dbo].[Trip]  WITH CHECK ADD  CONSTRAINT [FK_Trip_Company] FOREIGN KEY([ID_comp])
REFERENCES [dbo].[Company] ([ID_comp])
GO
ALTER TABLE [dbo].[Trip] CHECK CONSTRAINT [FK_Trip_Company]
GO
