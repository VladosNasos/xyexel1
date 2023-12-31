USE [master]
GO
/****** Object:  Database [BeerShop]    Script Date: 7/7/2023 6:49:31 PM ******/
CREATE DATABASE [BeerShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BeerShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\BeerShop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BeerShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\BeerShop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [BeerShop] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BeerShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BeerShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BeerShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BeerShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BeerShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BeerShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [BeerShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BeerShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BeerShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BeerShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BeerShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BeerShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BeerShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BeerShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BeerShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BeerShop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BeerShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BeerShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BeerShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BeerShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BeerShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BeerShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BeerShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BeerShop] SET RECOVERY FULL 
GO
ALTER DATABASE [BeerShop] SET  MULTI_USER 
GO
ALTER DATABASE [BeerShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BeerShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BeerShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BeerShop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BeerShop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BeerShop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BeerShop', N'ON'
GO
ALTER DATABASE [BeerShop] SET QUERY_STORE = ON
GO
ALTER DATABASE [BeerShop] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [BeerShop]
GO
/****** Object:  Table [dbo].[Table_1]    Script Date: 7/7/2023 6:49:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_1](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[manufacturer] [nvarchar](50) NULL,
	[type] [nvarchar](50) NULL,
	[price] [real] NULL,
	[volume] [float] NULL,
	[alcohol] [float] NULL,
	[expire_date] [date] NULL,
	[is_tasty] [bit] NULL,
	[is_beer] [bit] NULL,
	[discount] [nchar](10) NULL,
	[rating] [float] NULL,
	[test] [nchar](10) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Table_1] ([id], [name], [manufacturer], [type], [price], [volume], [alcohol], [expire_date], [is_tasty], [is_beer], [discount], [rating], [test]) VALUES (1, N'шуменско', N'шуменск ком', N'темное', 20, 1, 4.4, CAST(N'2023-09-03' AS Date), 1, 1, N'0         ', 100, NULL)
INSERT [dbo].[Table_1] ([id], [name], [manufacturer], [type], [price], [volume], [alcohol], [expire_date], [is_tasty], [is_beer], [discount], [rating], [test]) VALUES (2, N'Тетерив', N'тетер', N'супер темное', 40, 0.75, 15, CAST(N'2023-10-01' AS Date), 0, 1, N'0         ', 5, NULL)
INSERT [dbo].[Table_1] ([id], [name], [manufacturer], [type], [price], [volume], [alcohol], [expire_date], [is_tasty], [is_beer], [discount], [rating], [test]) VALUES (3, N'Kronenbourg ', N'SeaOfBeer', N'светлое', 80, 1, 4.5, CAST(N'2023-10-03' AS Date), 1, 1, N'0         ', 93, NULL)
INSERT [dbo].[Table_1] ([id], [name], [manufacturer], [type], [price], [volume], [alcohol], [expire_date], [is_tasty], [is_beer], [discount], [rating], [test]) VALUES (4, N'Kronenbourg black', N'SeaOfBeer', N'темное', 95, 1, 5, CAST(N'2023-09-04' AS Date), 1, 1, N'0         ', 78, NULL)
INSERT [dbo].[Table_1] ([id], [name], [manufacturer], [type], [price], [volume], [alcohol], [expire_date], [is_tasty], [is_beer], [discount], [rating], [test]) VALUES (5, N'Ламинария', N'SeaOfBeer', N'не пиво', 23, 0.2, 0, CAST(N'2025-05-25' AS Date), 1, 0, N'0         ', 81, NULL)
INSERT [dbo].[Table_1] ([id], [name], [manufacturer], [type], [price], [volume], [alcohol], [expire_date], [is_tasty], [is_beer], [discount], [rating], [test]) VALUES (6, N'Эль', N'SeaOfBeer', N'не пиво', 35, 1, 5.5, CAST(N'2023-10-25' AS Date), 1, 1, N'0         ', 78, NULL)
INSERT [dbo].[Table_1] ([id], [name], [manufacturer], [type], [price], [volume], [alcohol], [expire_date], [is_tasty], [is_beer], [discount], [rating], [test]) VALUES (7, N'Стухша Груша', N'Дід Василь', N'Неизвестно', 13, 2, 65, CAST(N'2017-11-07' AS Date), 0, 0, N'99        ', 1, NULL)
GO
USE [master]
GO
ALTER DATABASE [BeerShop] SET  READ_WRITE 
GO
