USE [master]
GO
/****** Object:  Database [Abonents_SavarovskiyIR330]    Script Date: 20.12.2022 12:00:22 ******/
CREATE DATABASE [Abonents_SavarovskiyIR330]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Abonents_SavarovskiyIR330', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\DATA\Abonents_SavarovskiyIR330.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Abonents_SavarovskiyIR330_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\DATA\Abonents_SavarovskiyIR330_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Abonents_SavarovskiyIR330] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Abonents_SavarovskiyIR330].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Abonents_SavarovskiyIR330] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Abonents_SavarovskiyIR330] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Abonents_SavarovskiyIR330] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Abonents_SavarovskiyIR330] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Abonents_SavarovskiyIR330] SET ARITHABORT OFF 
GO
ALTER DATABASE [Abonents_SavarovskiyIR330] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Abonents_SavarovskiyIR330] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Abonents_SavarovskiyIR330] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Abonents_SavarovskiyIR330] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Abonents_SavarovskiyIR330] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Abonents_SavarovskiyIR330] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Abonents_SavarovskiyIR330] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Abonents_SavarovskiyIR330] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Abonents_SavarovskiyIR330] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Abonents_SavarovskiyIR330] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Abonents_SavarovskiyIR330] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Abonents_SavarovskiyIR330] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Abonents_SavarovskiyIR330] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Abonents_SavarovskiyIR330] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Abonents_SavarovskiyIR330] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Abonents_SavarovskiyIR330] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Abonents_SavarovskiyIR330] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Abonents_SavarovskiyIR330] SET RECOVERY FULL 
GO
ALTER DATABASE [Abonents_SavarovskiyIR330] SET  MULTI_USER 
GO
ALTER DATABASE [Abonents_SavarovskiyIR330] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Abonents_SavarovskiyIR330] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Abonents_SavarovskiyIR330] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Abonents_SavarovskiyIR330] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Abonents_SavarovskiyIR330] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Abonents_SavarovskiyIR330', N'ON'
GO
ALTER DATABASE [Abonents_SavarovskiyIR330] SET QUERY_STORE = OFF
GO
USE [Abonents_SavarovskiyIR330]
GO
/****** Object:  Table [dbo].[Абоненты]    Script Date: 20.12.2022 12:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Абоненты](
	[ID_Абонента] [smallint] NOT NULL,
	[ФИО] [varchar](255) NOT NULL,
	[Адрес] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Абонента] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Разговоры]    Script Date: 20.12.2022 12:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Разговоры](
	[ID_Разговора] [smallint] NOT NULL,
	[Номер_Города] [smallint] NOT NULL,
	[Телефон] [nvarchar](50) NOT NULL,
	[Дата_Разговора] [date] NOT NULL,
	[Продолжительность] [int] NOT NULL,
	[Состояние_Оплаты] [varchar](255) NOT NULL,
 CONSTRAINT [PK__Разговор__B7A0F167456D7B0E] PRIMARY KEY CLUSTERED 
(
	[ID_Разговора] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Тарифы]    Script Date: 20.12.2022 12:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Тарифы](
	[ID_Города] [smallint] IDENTITY(1,1) NOT NULL,
	[Город] [varchar](255) NOT NULL,
	[Цена] [int] NOT NULL,
 CONSTRAINT [PK__Тарифы__1A7786FB205CC169] PRIMARY KEY CLUSTERED 
(
	[ID_Города] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Телефоны]    Script Date: 20.12.2022 12:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Телефоны](
	[ID_Телефона] [nvarchar](50) NOT NULL,
	[ID_Абонента] [smallint] NOT NULL,
	[Номер_Договора] [varchar](255) NOT NULL,
	[Дата_Установки] [date] NOT NULL,
 CONSTRAINT [PK__Телефоны__30FC95610D694624] PRIMARY KEY CLUSTERED 
(
	[ID_Телефона] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Абоненты] ([ID_Абонента], [ФИО], [Адрес]) VALUES (1, N'Орлов 
Сергей Борисович
', N'г.Омск, ул. Мира, 54,4



')
INSERT [dbo].[Абоненты] ([ID_Абонента], [ФИО], [Адрес]) VALUES (3, N'Вавилов
Сергей Борисович
', N'Г. Омск, пр.Маркса, 34,23')
INSERT [dbo].[Абоненты] ([ID_Абонента], [ФИО], [Адрес]) VALUES (4, N'Титова Александра Иввановна', N'г. Омск, ул. Ленина, 5,24



')
GO
INSERT [dbo].[Разговоры] ([ID_Разговора], [Номер_Города], [Телефон], [Дата_Разговора], [Продолжительность], [Состояние_Оплаты]) VALUES (1, 1, N'(3812)326789', CAST(N'2021-03-02' AS Date), 12, N'не оплачено')
INSERT [dbo].[Разговоры] ([ID_Разговора], [Номер_Города], [Телефон], [Дата_Разговора], [Продолжительность], [Состояние_Оплаты]) VALUES (2, 4, N'(3812)951211', CAST(N'2021-03-02' AS Date), 2, N'оплачено')
INSERT [dbo].[Разговоры] ([ID_Разговора], [Номер_Города], [Телефон], [Дата_Разговора], [Продолжительность], [Состояние_Оплаты]) VALUES (3, 3, N'(3812)531178', CAST(N'2021-03-08' AS Date), 15, N'оплачено')
INSERT [dbo].[Разговоры] ([ID_Разговора], [Номер_Города], [Телефон], [Дата_Разговора], [Продолжительность], [Состояние_Оплаты]) VALUES (4, 3, N'(3812)333490   ', CAST(N'2021-03-08' AS Date), 5, N'оплачено')
INSERT [dbo].[Разговоры] ([ID_Разговора], [Номер_Города], [Телефон], [Дата_Разговора], [Продолжительность], [Состояние_Оплаты]) VALUES (5, 5, N'(3812)326789', CAST(N'2021-03-15' AS Date), 10, N'оплачено')
INSERT [dbo].[Разговоры] ([ID_Разговора], [Номер_Города], [Телефон], [Дата_Разговора], [Продолжительность], [Состояние_Оплаты]) VALUES (6, 1, N'(3812)531178', CAST(N'2021-03-15' AS Date), 1, N'не оплачено')
INSERT [dbo].[Разговоры] ([ID_Разговора], [Номер_Города], [Телефон], [Дата_Разговора], [Продолжительность], [Состояние_Оплаты]) VALUES (7, 1, N'(3812)333490', CAST(N'2021-03-15' AS Date), 10, N'не оплачено')
INSERT [dbo].[Разговоры] ([ID_Разговора], [Номер_Города], [Телефон], [Дата_Разговора], [Продолжительность], [Состояние_Оплаты]) VALUES (8, 2, N'(3812)951211', CAST(N'2021-03-15' AS Date), 1, N'оплачено')
INSERT [dbo].[Разговоры] ([ID_Разговора], [Номер_Города], [Телефон], [Дата_Разговора], [Продолжительность], [Состояние_Оплаты]) VALUES (9, 3, N'(3812)953412', CAST(N'2021-03-23' AS Date), 6, N'оплачено')
GO
SET IDENTITY_INSERT [dbo].[Тарифы] ON 

INSERT [dbo].[Тарифы] ([ID_Города], [Город], [Цена]) VALUES (1, N'Омск', 10)
INSERT [dbo].[Тарифы] ([ID_Города], [Город], [Цена]) VALUES (2, N'Москва', 30)
INSERT [dbo].[Тарифы] ([ID_Города], [Город], [Цена]) VALUES (3, N'Воронеж', 20)
INSERT [dbo].[Тарифы] ([ID_Города], [Город], [Цена]) VALUES (4, N'Новосибирск', 10)
INSERT [dbo].[Тарифы] ([ID_Города], [Город], [Цена]) VALUES (5, N'Санкт-Петербург', 30)
SET IDENTITY_INSERT [dbo].[Тарифы] OFF
GO
INSERT [dbo].[Телефоны] ([ID_Телефона], [ID_Абонента], [Номер_Договора], [Дата_Установки]) VALUES (N'(3812)326789 ', 1, N'2378Ф', CAST(N'1996-01-01' AS Date))
INSERT [dbo].[Телефоны] ([ID_Телефона], [ID_Абонента], [Номер_Договора], [Дата_Установки]) VALUES (N'(3812)333490 ', 4, N'3465Ф', CAST(N'2012-10-09' AS Date))
INSERT [dbo].[Телефоны] ([ID_Телефона], [ID_Абонента], [Номер_Договора], [Дата_Установки]) VALUES (N'(3812)531178', 1, N'4523В', CAST(N'2004-08-04' AS Date))
INSERT [dbo].[Телефоны] ([ID_Телефона], [ID_Абонента], [Номер_Договора], [Дата_Установки]) VALUES (N'(3812)951211', 4, N'3466Ф', CAST(N'2012-10-09' AS Date))
INSERT [dbo].[Телефоны] ([ID_Телефона], [ID_Абонента], [Номер_Договора], [Дата_Установки]) VALUES (N'(3812)953412   ', 3, N'99345Р', CAST(N'2013-01-01' AS Date))
GO
ALTER TABLE [dbo].[Разговоры]  WITH CHECK ADD  CONSTRAINT [FK_Разговоры_Тарифы] FOREIGN KEY([Номер_Города])
REFERENCES [dbo].[Тарифы] ([ID_Города])
GO
ALTER TABLE [dbo].[Разговоры] CHECK CONSTRAINT [FK_Разговоры_Тарифы]
GO
ALTER TABLE [dbo].[Разговоры]  WITH CHECK ADD  CONSTRAINT [FK_Разговоры_Телефоны] FOREIGN KEY([Телефон])
REFERENCES [dbo].[Телефоны] ([ID_Телефона])
GO
ALTER TABLE [dbo].[Разговоры] CHECK CONSTRAINT [FK_Разговоры_Телефоны]
GO
ALTER TABLE [dbo].[Телефоны]  WITH CHECK ADD  CONSTRAINT [FK_Телефоны_Абоненты] FOREIGN KEY([ID_Абонента])
REFERENCES [dbo].[Абоненты] ([ID_Абонента])
GO
ALTER TABLE [dbo].[Телефоны] CHECK CONSTRAINT [FK_Телефоны_Абоненты]
GO
/****** Object:  StoredProcedure [dbo].[Добавление_Абонента]    Script Date: 20.12.2022 12:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Добавление_Абонента]
@ФИО varchar(255),
@Адрес varchar(255)
As
INSERT INTO [dbo].[Абоненты]([ФИО],[Адрес])
VALUES (@ФИО,@Адрес)
GO
/****** Object:  StoredProcedure [dbo].[УдалениеАбонента]    Script Date: 20.12.2022 12:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[УдалениеАбонента]
@ФИО varchar(255)
As
DELETE FROM [dbo].[Абоненты]
WHERE [ФИО]=@ФИО
GO
USE [master]
GO
ALTER DATABASE [Abonents_SavarovskiyIR330] SET  READ_WRITE 
GO
