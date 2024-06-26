USE [master]
GO
/****** Object:  Database [LaptopShop]    Script Date: 4/14/2024 9:12:54 PM ******/
CREATE DATABASE [LaptopShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LaptopShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\LaptopShop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LaptopShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\LaptopShop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [LaptopShop] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LaptopShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LaptopShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LaptopShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LaptopShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LaptopShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LaptopShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [LaptopShop] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [LaptopShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LaptopShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LaptopShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LaptopShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LaptopShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LaptopShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LaptopShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LaptopShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LaptopShop] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LaptopShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LaptopShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LaptopShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LaptopShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LaptopShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LaptopShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LaptopShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LaptopShop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LaptopShop] SET  MULTI_USER 
GO
ALTER DATABASE [LaptopShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LaptopShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LaptopShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LaptopShop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LaptopShop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LaptopShop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [LaptopShop] SET QUERY_STORE = ON
GO
ALTER DATABASE [LaptopShop] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [LaptopShop]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 4/14/2024 9:12:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProducerProductCategory]    Script Date: 4/14/2024 9:12:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProducerProductCategory](
	[ProducerID] [int] IDENTITY(1,1) NOT NULL,
	[NameProducer] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProducerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 4/14/2024 9:12:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProducerID] [int] NOT NULL,
	[TypeProductID] [int] NOT NULL,
	[NameProduct] [varchar](100) NOT NULL,
	[ProductSpecs] [text] NULL,
	[DescriptionProduct] [nvarchar](250) NULL,
	[Price] [decimal](10, 2) NOT NULL,
	[Discount] [decimal](5, 2) NULL,
	[StockQuantity] [int] NOT NULL,
	[ImageURL] [varchar](255) NULL,
	[Featured] [int] NULL,
	[UpdateDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeProductCategory]    Script Date: 4/14/2024 9:12:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeProductCategory](
	[TypeProductID] [int] IDENTITY(1,1) NOT NULL,
	[NameTypeProduct] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[TypeProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAccounts]    Script Date: 4/14/2024 9:12:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccounts](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserEmail] [varchar](250) NOT NULL,
	[UserPassword] [varchar](250) NOT NULL,
	[UserPhoneNumber] [varchar](15) NOT NULL,
	[UserAddress] [varchar](250) NOT NULL,
	[UserType] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserOrders]    Script Date: 4/14/2024 9:12:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserOrders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[TotalAmount] [decimal](10, 2) NOT NULL,
	[OrderStatus] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ProducerProductCategory] ON 

INSERT [dbo].[ProducerProductCategory] ([ProducerID], [NameProducer]) VALUES (1, N'ASUS')
INSERT [dbo].[ProducerProductCategory] ([ProducerID], [NameProducer]) VALUES (2, N'ACER')
INSERT [dbo].[ProducerProductCategory] ([ProducerID], [NameProducer]) VALUES (3, N'DELL')
INSERT [dbo].[ProducerProductCategory] ([ProducerID], [NameProducer]) VALUES (4, N'HP')
INSERT [dbo].[ProducerProductCategory] ([ProducerID], [NameProducer]) VALUES (5, N'LENOVO')
INSERT [dbo].[ProducerProductCategory] ([ProducerID], [NameProducer]) VALUES (6, N'LEGION')
INSERT [dbo].[ProducerProductCategory] ([ProducerID], [NameProducer]) VALUES (7, N'ZOWIE')
INSERT [dbo].[ProducerProductCategory] ([ProducerID], [NameProducer]) VALUES (8, N'RAZER')
INSERT [dbo].[ProducerProductCategory] ([ProducerID], [NameProducer]) VALUES (9, N'LOGITECH')
INSERT [dbo].[ProducerProductCategory] ([ProducerID], [NameProducer]) VALUES (10, N'EDRA')
SET IDENTITY_INSERT [dbo].[ProducerProductCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProducerID], [TypeProductID], [NameProduct], [ProductSpecs], [DescriptionProduct], [Price], [Discount], [StockQuantity], [ImageURL], [Featured], [UpdateDate]) VALUES (2, 1, 2, N'Acer Nitro 5 Tiger A1295', N'CPU: Core i711400 | Graphic Card: RTX3050ti | Ram: 8GB', N'Sản phẩm nổi bật vừa được đưa lên cộng đồng dạo gần đây', CAST(10000000.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(5, 2)), 100, N'acerA1295.jpg', 1, CAST(N'2024-04-07' AS Date))
INSERT [dbo].[Products] ([ProductID], [ProducerID], [TypeProductID], [NameProduct], [ProductSpecs], [DescriptionProduct], [Price], [Discount], [StockQuantity], [ImageURL], [Featured], [UpdateDate]) VALUES (4, 7, 3, N'ZOWIE EC2', N'DPI: 11 | Size: M | Driver: No | Wireless: Yes', N'Chuột thích hợp hầu như cho mọi phân khúc', CAST(6000000.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(5, 2)), 10, N'zowieEC2.jpg', 1, CAST(N'2024-04-07' AS Date))
INSERT [dbo].[Products] ([ProductID], [ProducerID], [TypeProductID], [NameProduct], [ProductSpecs], [DescriptionProduct], [Price], [Discount], [StockQuantity], [ImageURL], [Featured], [UpdateDate]) VALUES (5, 8, 2, N'Akko Tokyo World Tour', N'Keycap: DS | Wireless: Yess | Size: 75%', N'Sản phẩm nổi bật vừa được đưa lên cộng đồng dạo gần đây', CAST(6900000.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(5, 2)), 100, N'akkoTokyoW.jpg', 1, CAST(N'2024-04-07' AS Date))
INSERT [dbo].[Products] ([ProductID], [ProducerID], [TypeProductID], [NameProduct], [ProductSpecs], [DescriptionProduct], [Price], [Discount], [StockQuantity], [ImageURL], [Featured], [UpdateDate]) VALUES (6, 1, 2, N'ASUS PREDATOR A9992', N'CPU: Core i154000 | Graphic Card: RTX4060 | Ram: 32GB', N'Con Quái Vật Mới Của Giới Công Nghệ', CAST(22000000.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(5, 2)), 100, N'asusA9992.jpg', 1, CAST(N'2024-04-07' AS Date))
INSERT [dbo].[Products] ([ProductID], [ProducerID], [TypeProductID], [NameProduct], [ProductSpecs], [DescriptionProduct], [Price], [Discount], [StockQuantity], [ImageURL], [Featured], [UpdateDate]) VALUES (7, 1, 3, N'ASUS PREDATOR A13123', N'CPU: Core i154000 | Graphic Card: RTX3060 | Ram: 32GB', N'Con Quái Vật Mới Của Giới Công Nghệ', CAST(22000000.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(5, 2)), 100, N'asusA9992.jpg', 1, CAST(N'2024-04-07' AS Date))
INSERT [dbo].[Products] ([ProductID], [ProducerID], [TypeProductID], [NameProduct], [ProductSpecs], [DescriptionProduct], [Price], [Discount], [StockQuantity], [ImageURL], [Featured], [UpdateDate]) VALUES (8, 3, 1, N'DELL', N'CPU: Core i154000 | Graphic Card: RTX4060 | Ram: 64GB', N'Con Quái Vật Mới Của Giới Công Nghệ', CAST(22000000.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(5, 2)), 100, N'asusA9992.jpg', 1, CAST(N'2024-04-07' AS Date))
INSERT [dbo].[Products] ([ProductID], [ProducerID], [TypeProductID], [NameProduct], [ProductSpecs], [DescriptionProduct], [Price], [Discount], [StockQuantity], [ImageURL], [Featured], [UpdateDate]) VALUES (11, 1, 3, N'Laptop ASUS Expertbook B1 B1402CBA NK1535W', N'CPU: Intel® Core™ i3-1215U Processor 1.2 GHz | Graphic Card: Intel® UHD Graphics | Ram: 8GB DDR4 3200MHz', N'Luôn giữ vững vị thế của mình trong ngành laptop văn phòng, ASUS liên tục cố gắng hoàn thiện và cải tiến sản phẩm của mình để phù hợp với nhu cầu sử dụng của người dùng.', CAST(22000000.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(5, 2)), 100, N'asusB1402CBA.jpg', 3, CAST(N'2024-04-10' AS Date))
INSERT [dbo].[Products] ([ProductID], [ProducerID], [TypeProductID], [NameProduct], [ProductSpecs], [DescriptionProduct], [Price], [Discount], [StockQuantity], [ImageURL], [Featured], [UpdateDate]) VALUES (12, 1, 3, N'Laptop gaming ASUS ROG Zephyrus G16 GU605MV QR196WS', N'CPU: Intel® Core™ i3-1215U Processor 1.2 GHz | Graphic Card: Intel® UHD Graphics | Ram: 8GB DDR4 3200MHz', N'Luôn giữ vững vị thế của mình trong ngành laptop văn phòng, ASUS liên tục cố gắng hoàn thiện và cải tiến sản phẩm của mình để phù hợp với nhu cầu sử dụng của người dùng.', CAST(69000000.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(5, 2)), 100, N'asusGU605MV.jpg', 3, CAST(N'2024-04-10' AS Date))
INSERT [dbo].[Products] ([ProductID], [ProducerID], [TypeProductID], [NameProduct], [ProductSpecs], [DescriptionProduct], [Price], [Discount], [StockQuantity], [ImageURL], [Featured], [UpdateDate]) VALUES (13, 5, 3, N'Laptop gaming Lenovo LOQ 15IRH8 82XV00Q4VN', N'CPU: Intel® Core™ i3-1215U Processor 1.2 GHz | Graphic Card: Intel® UHD Graphics | Ram: 8GB DDR4 3200MHz', N'Luôn giữ vững vị thế của mình trong ngành laptop văn phòng, ASUS liên tục cố gắng hoàn thiện và cải tiến sản phẩm của mình để phù hợp với nhu cầu sử dụng của người dùng.', CAST(44000000.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(5, 2)), 100, N'82XV00Q4VN.jpg', 3, CAST(N'2024-04-10' AS Date))
INSERT [dbo].[Products] ([ProductID], [ProducerID], [TypeProductID], [NameProduct], [ProductSpecs], [DescriptionProduct], [Price], [Discount], [StockQuantity], [ImageURL], [Featured], [UpdateDate]) VALUES (14, 3, 3, N'Laptop Dell Inspiron 15 N3530 I3U085W11BLU', N'CPU: Intel® Core™ i3-1215U Processor 1.2 GHz | Graphic Card: Intel® UHD Graphics | Ram: 8GB DDR4 3200MHz', N'Luôn giữ vững vị thế của mình trong ngành laptop văn phòng, ASUS liên tục cố gắng hoàn thiện và cải tiến sản phẩm của mình để phù hợp với nhu cầu sử dụng của người dùng.', CAST(55000000.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(5, 2)), 100, N'I3U085W11BLU.jpg', 3, CAST(N'2024-04-10' AS Date))
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeProductCategory] ON 

INSERT [dbo].[TypeProductCategory] ([TypeProductID], [NameTypeProduct]) VALUES (1, N'LAPTOP')
INSERT [dbo].[TypeProductCategory] ([TypeProductID], [NameTypeProduct]) VALUES (2, N'KEYBOARD')
INSERT [dbo].[TypeProductCategory] ([TypeProductID], [NameTypeProduct]) VALUES (3, N'MOUSE')
SET IDENTITY_INSERT [dbo].[TypeProductCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[UserAccounts] ON 

INSERT [dbo].[UserAccounts] ([UserID], [UserEmail], [UserPassword], [UserPhoneNumber], [UserAddress], [UserType]) VALUES (1, N'lecan15391@gmail.com', N'123456', N'0356991750', N'TP.HCM', N'admin')
SET IDENTITY_INSERT [dbo].[UserAccounts] OFF
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [Featured]
GO
ALTER TABLE [dbo].[UserAccounts] ADD  DEFAULT ('user') FOR [UserType]
GO
ALTER TABLE [dbo].[UserOrders] ADD  DEFAULT (getdate()) FOR [OrderDate]
GO
ALTER TABLE [dbo].[UserOrders] ADD  DEFAULT ('Ðang Ch? X? Lý') FOR [OrderStatus]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[UserOrders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([ProducerID])
REFERENCES [dbo].[ProducerProductCategory] ([ProducerID])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([TypeProductID])
REFERENCES [dbo].[TypeProductCategory] ([TypeProductID])
GO
ALTER TABLE [dbo].[UserOrders]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[UserAccounts] ([UserID])
GO
ALTER TABLE [dbo].[UserAccounts]  WITH CHECK ADD CHECK  (([UserType]='user' OR [UserType]='admin'))
GO
/****** Object:  StoredProcedure [dbo].[sp_login]    Script Date: 4/14/2024 9:12:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_login] 
(

	@UserEmail VARCHAR (250),
	@UserPassword VARCHAR (250)
)
as
begin 
SELECT * from UserAccounts where UserEmail = @UserEmail and UserPassword = @UserPassword

end;
GO
USE [master]
GO
ALTER DATABASE [LaptopShop] SET  READ_WRITE 
GO
