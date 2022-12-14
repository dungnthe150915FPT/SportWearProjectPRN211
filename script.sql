USE [master]
GO
/****** Object:  Database [SportWear]    Script Date: 11/14/2022 1:17:37 PM ******/
CREATE DATABASE [SportWear]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SportWear', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\SportWear.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SportWear_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\SportWear_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SportWear] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SportWear].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SportWear] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SportWear] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SportWear] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SportWear] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SportWear] SET ARITHABORT OFF 
GO
ALTER DATABASE [SportWear] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SportWear] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SportWear] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SportWear] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SportWear] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SportWear] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SportWear] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SportWear] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SportWear] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SportWear] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SportWear] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SportWear] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SportWear] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SportWear] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SportWear] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SportWear] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SportWear] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SportWear] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SportWear] SET  MULTI_USER 
GO
ALTER DATABASE [SportWear] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SportWear] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SportWear] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SportWear] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SportWear] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SportWear] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SportWear] SET QUERY_STORE = OFF
GO
USE [SportWear]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 11/14/2022 1:17:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NULL,
	[Gender] [bit] NULL,
	[Phone] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[DateOfBirth] [date] NULL,
	[Address] [nvarchar](50) NULL,
	[isAdmin] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/14/2022 1:17:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/14/2022 1:17:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[AddedDate] [date] NOT NULL,
	[Description] [nvarchar](250) NOT NULL,
	[Image] [varchar](250) NOT NULL,
	[SourceOfSupply] [nvarchar](50) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[AccountID] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([AccountID], [Username], [Password], [Fullname], [Gender], [Phone], [Email], [DateOfBirth], [Address], [isAdmin]) VALUES (1, N'dungnt', N'123', N'Nguyễn Tuấn Dũng', 1, N'0969029221', N'dungnthe150915@fpt.edu.vn', CAST(N'2001-04-22' AS Date), N'Hà Nội', 1)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [Fullname], [Gender], [Phone], [Email], [DateOfBirth], [Address], [isAdmin]) VALUES (2, N'tientd', N'123', N'Tạ Đình Tiến', 1, N'0123456789', N'tien123@gmail.com', CAST(N'1990-12-12' AS Date), N'Hà Nội', 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (1, N'Giày')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (2, N'Áo')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (3, N'Quần')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (4, N'Tất')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (2, N'Giày Adidas', 100, 1000000, CAST(N'2022-12-14' AS Date), N'Giày thể thao nam cực đẹp', N'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/092/products/adidas-grand-court-ef0103-01.jpg?v=1616561646283', N'Công ty Adidas', 1, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (3, N'Áo thể thao Dunlop', 100, 100000, CAST(N'2022-12-15' AS Date), N'Áo thể thao cực đẹp', N'https://bizweb.dktcdn.net/100/239/277/products/f95d71a5-9ea2-4f5d-aafe-d931ad73ca4f.jpg?v=1666168339467', N'Công ty Dunlop', 2, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (4, N'Quần thể thao Dunlop', 100, 100000, CAST(N'2022-12-15' AS Date), N'Quần thể thao Dunlop', N'https://bizweb.dktcdn.net/thumb/grande/100/239/277/products/quan-tennis-nam-the-thao-dunlop-dqtes22008-1s-001-941f75c6-3061-4e2f-accd-abd6bf40d52b.jpg?v=1666167770067', N'Công ty Dunlop', 3, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (5, N'Giày Nike', 100, 200000, CAST(N'2022-12-16' AS Date), N'Giày thể thao Nike cực đẹp', N'https://prices.vn/photos/8/product/giay-nike-nu-cortez.jpg', N'Công ty Nike', 1, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (8, N'Áo Man City', 100, 120000, CAST(N'2022-12-16' AS Date), N'Áo Man City sân nhà mùa giải 2022-2023', N'https://www.sporter.vn/wp-content/uploads/2017/06/Ao-bong-da-man-city-san-nha-hang-viet-nam-0.jpg', N'Sporter.vn', 2, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (20, N'Giày Akka', 100, 500000, CAST(N'2022-12-16' AS Date), N'GIày bóng đá cực chất', N'https://bucket.nhanh.vn/store/26181/ps/20210803/giay_da_bong_akka_speed2_do.jpg', N'Công ty Akka', 1, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (21, N'Giày Akka', 100, 500000, CAST(N'2022-12-16' AS Date), N'GIày bóng đá cực chất', N'https://bucket.nhanh.vn/store/26181/ps/20210803/giay_da_bong_akka_speed2_do.jpg', N'Công ty Akka', 1, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (22, N'Giày Akka', 100, 500000, CAST(N'2022-12-16' AS Date), N'GIày bóng đá cực chất', N'https://bucket.nhanh.vn/store/26181/ps/20210803/giay_da_bong_akka_speed2_do.jpg', N'Công ty Akka', 1, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (23, N'Giày Akka', 100, 500000, CAST(N'2022-12-16' AS Date), N'GIày bóng đá cực chất', N'https://bucket.nhanh.vn/store/26181/ps/20210803/giay_da_bong_akka_speed2_do.jpg', N'Công ty Akka', 1, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (24, N'Giày Akka', 100, 500000, CAST(N'2022-12-16' AS Date), N'GIày bóng đá cực chất', N'https://bucket.nhanh.vn/store/26181/ps/20210803/giay_da_bong_akka_speed2_do.jpg', N'Công ty Akka', 1, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (25, N'Giày Akka', 100, 500000, CAST(N'2022-12-16' AS Date), N'GIày bóng đá cực chất', N'https://bucket.nhanh.vn/store/26181/ps/20210803/giay_da_bong_akka_speed2_do.jpg', N'Công ty Akka', 1, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (26, N'Giày Akka', 100, 500000, CAST(N'2022-12-16' AS Date), N'GIày bóng đá cực chất', N'https://bucket.nhanh.vn/store/26181/ps/20210803/giay_da_bong_akka_speed2_do.jpg', N'Công ty Akka', 1, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (27, N'Giày Akka', 100, 500000, CAST(N'2022-12-16' AS Date), N'GIày bóng đá cực chất', N'https://bucket.nhanh.vn/store/26181/ps/20210803/giay_da_bong_akka_speed2_do.jpg', N'Công ty Akka', 1, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (30, N'Giày Adidas', 100, 1000000, CAST(N'2022-12-14' AS Date), N'Giày thể thao nam', N'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/092/products/adidas-grand-court-ef0103-01.jpg?v=1616561646283', N'Công ty Adidas', 1, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (31, N'Giày Adidas', 100, 1000000, CAST(N'2022-12-14' AS Date), N'Giày thể thao nam', N'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/092/products/adidas-grand-court-ef0103-01.jpg?v=1616561646283', N'Công ty Adidas', 1, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (32, N'Giày Adidas', 100, 1000000, CAST(N'2022-12-14' AS Date), N'Giày thể thao nam', N'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/092/products/adidas-grand-court-ef0103-01.jpg?v=1616561646283', N'Công ty Adidas', 1, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (35, N'Giày Adidas', 100, 1000000, CAST(N'2022-12-14' AS Date), N'Giày thể thao nam', N'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/092/products/adidas-grand-court-ef0103-01.jpg?v=1616561646283', N'Công ty Adidas', 1, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (39, N'Áo Man City', 120000, 100, CAST(N'2022-11-13' AS Date), N'Áo Mancity sân nhà mùa giải 2022-2023', N'https://www.sporter.vn/wp-content/uploads/2017/06/Ao-bong-da-man-city-san-nha-hang-viet-nam-0.jpg', N'Sporter.vn', 2, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (40, N'Áo Man City', 120000, 100, CAST(N'2022-11-13' AS Date), N'Áo Mancity sân nhà mùa giải 2022-2023', N'https://www.sporter.vn/wp-content/uploads/2017/06/Ao-bong-da-man-city-san-nha-hang-viet-nam-0.jpg', N'Sporter.vn', 2, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (41, N'Áo Man City', 120000, 100, CAST(N'2022-11-13' AS Date), N'Áo Mancity sân nhà mùa giải 2022-2023', N'https://www.sporter.vn/wp-content/uploads/2017/06/Ao-bong-da-man-city-san-nha-hang-viet-nam-0.jpg', N'Sporter.vn', 2, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (42, N'Áo Man United', 100, 100000, CAST(N'2022-11-13' AS Date), N'Áo Man United sân nhà mùa giải 2022-2023', N'https://cf.shopee.vn/file/d22c79de0126bd2845ea21d663471a86', N'Sporter.vn', 2, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (43, N'Áo thể thao Dunlop', 100, 100000, CAST(N'2022-12-15' AS Date), N'Áo thể thao cực đẹp', N'https://bizweb.dktcdn.net/100/239/277/products/f95d71a5-9ea2-4f5d-aafe-d931ad73ca4f.jpg?v=1666168339467', N'Công ty Dunlop', 2, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (44, N'Áo thể thao Dunlop', 100, 100000, CAST(N'2022-12-15' AS Date), N'Áo thể thao cực đẹp', N'https://bizweb.dktcdn.net/100/239/277/products/f95d71a5-9ea2-4f5d-aafe-d931ad73ca4f.jpg?v=1666168339467', N'Công ty Dunlop', 2, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (45, N'Áo thể thao Dunlop', 100, 100000, CAST(N'2022-12-15' AS Date), N'Áo thể thao cực đẹp', N'https://bizweb.dktcdn.net/100/239/277/products/f95d71a5-9ea2-4f5d-aafe-d931ad73ca4f.jpg?v=1666168339467', N'Công ty Dunlop', 2, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (46, N'Áo thể thao Dunlop', 100, 100000, CAST(N'2022-12-15' AS Date), N'Áo thể thao cực đẹp', N'https://bizweb.dktcdn.net/100/239/277/products/f95d71a5-9ea2-4f5d-aafe-d931ad73ca4f.jpg?v=1666168339467', N'Công ty Dunlop', 2, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (47, N'Áo thể thao Dunlop', 100, 100000, CAST(N'2022-12-15' AS Date), N'Áo thể thao cực đẹp', N'https://bizweb.dktcdn.net/100/239/277/products/f95d71a5-9ea2-4f5d-aafe-d931ad73ca4f.jpg?v=1666168339467', N'Công ty Dunlop', 2, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (48, N'Quần thể thao Dunlop', 100, 100000, CAST(N'2022-12-15' AS Date), N'Quần thể thao Dunlop', N'https://bizweb.dktcdn.net/thumb/grande/100/239/277/products/quan-tennis-nam-the-thao-dunlop-dqtes22008-1s-001-941f75c6-3061-4e2f-accd-abd6bf40d52b.jpg?v=1666167770067', N'Công ty Dunlop', 3, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (49, N'Quần thể thao Dunlop', 100, 100000, CAST(N'2022-12-15' AS Date), N'Quần thể thao Dunlop', N'https://bizweb.dktcdn.net/thumb/grande/100/239/277/products/quan-tennis-nam-the-thao-dunlop-dqtes22008-1s-001-941f75c6-3061-4e2f-accd-abd6bf40d52b.jpg?v=1666167770067', N'Công ty Dunlop', 3, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (50, N'Quần thể thao Dunlop', 100, 100000, CAST(N'2022-12-15' AS Date), N'Quần thể thao Dunlop', N'https://bizweb.dktcdn.net/thumb/grande/100/239/277/products/quan-tennis-nam-the-thao-dunlop-dqtes22008-1s-001-941f75c6-3061-4e2f-accd-abd6bf40d52b.jpg?v=1666167770067', N'Công ty Dunlop', 3, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (51, N'Quần thể thao Dunlop', 100, 100000, CAST(N'2022-12-15' AS Date), N'Quần thể thao Dunlop', N'https://bizweb.dktcdn.net/thumb/grande/100/239/277/products/quan-tennis-nam-the-thao-dunlop-dqtes22008-1s-001-941f75c6-3061-4e2f-accd-abd6bf40d52b.jpg?v=1666167770067', N'Công ty Dunlop', 3, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (52, N'Quần thể thao Dunlop', 100, 100000, CAST(N'2022-12-15' AS Date), N'Quần thể thao Dunlop', N'https://bizweb.dktcdn.net/thumb/grande/100/239/277/products/quan-tennis-nam-the-thao-dunlop-dqtes22008-1s-001-941f75c6-3061-4e2f-accd-abd6bf40d52b.jpg?v=1666167770067', N'Công ty Dunlop', 3, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (53, N'Giày Nike', 100, 200000, CAST(N'2022-12-16' AS Date), N'Giày thể thao Nike cực đẹp', N'https://prices.vn/photos/8/product/giay-nike-nu-cortez.jpg', N'Công ty Nike', 1, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (54, N'Giày Nike', 100, 200000, CAST(N'2022-12-16' AS Date), N'Giày thể thao Nike cực đẹp', N'https://prices.vn/photos/8/product/giay-nike-nu-cortez.jpg', N'Công ty Nike', 1, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (55, N'Giày Nike', 100, 200000, CAST(N'2022-12-16' AS Date), N'Giày thể thao Nike cực đẹp', N'https://prices.vn/photos/8/product/giay-nike-nu-cortez.jpg', N'Công ty Nike', 1, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (56, N'Giày Nike', 100, 200000, CAST(N'2022-12-16' AS Date), N'Giày thể thao Nike cực đẹp', N'https://prices.vn/photos/8/product/giay-nike-nu-cortez.jpg', N'Công ty Nike', 1, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (57, N'Giày Nike', 100, 200000, CAST(N'2022-12-16' AS Date), N'Giày thể thao Nike cực đẹp', N'https://prices.vn/photos/8/product/giay-nike-nu-cortez.jpg', N'Công ty Nike', 1, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (58, N'Áo Man United', 100, 100000, CAST(N'2022-11-13' AS Date), N'Áo Man United sân nhà mùa giải 2022-2023', N'https://cf.shopee.vn/file/d22c79de0126bd2845ea21d663471a86', N'Sporter.vn', 2, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (59, N'Áo Man United', 100, 100000, CAST(N'2022-11-13' AS Date), N'Áo Man United sân nhà mùa giải 2022-2023', N'https://cf.shopee.vn/file/d22c79de0126bd2845ea21d663471a86', N'Sporter.vn', 2, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (60, N'Áo Man United', 100, 100000, CAST(N'2022-11-13' AS Date), N'Áo Man United sân nhà mùa giải 2022-2023', N'https://cf.shopee.vn/file/d22c79de0126bd2845ea21d663471a86', N'Sporter.vn', 2, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (61, N'Áo Man United', 100, 100000, CAST(N'2022-11-13' AS Date), N'Áo Man United sân nhà mùa giải 2022-2023', N'https://cf.shopee.vn/file/d22c79de0126bd2845ea21d663471a86', N'Sporter.vn', 2, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Price], [AddedDate], [Description], [Image], [SourceOfSupply], [CategoryID], [AccountID]) VALUES (62, N'Áo Man United', 100, 100000, CAST(N'2022-11-13' AS Date), N'Áo Man United sân nhà mùa giải 2022-2023', N'https://cf.shopee.vn/file/d22c79de0126bd2845ea21d663471a86', N'Sporter.vn', 2, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Account]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
USE [master]
GO
ALTER DATABASE [SportWear] SET  READ_WRITE 
GO
